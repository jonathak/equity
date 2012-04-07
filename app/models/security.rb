class Security < ActiveRecord::Base
  validates_presence_of :name, :kind
  validates_uniqueness_of :name, :scope => :company_id
  validates_numericality_of :rank, {:greater_than => 0, :less_than => 101, :only_integer => true, :allow_nil => true}
  validates_numericality_of :liq_pref, :partic_cap, {:greater_than => 0, :allow_nil => true}
  validates_numericality_of :disc_fact, :warrant_cov, :int_rate, :div_rate, 
    {:greater_than => 0, :less_than => 1.0, :allow_nil => true}
  belongs_to :company
  has_many :transactions
  has_many :buyers, :through => :transactions
  has_many :sellers, :through => :transactions
  has_many :uses, :foreign_key => :component_id, :class_name => "Possession"
  has_many :captures, :foreign_key => :composite_id, :class_name => "Possession"
  
  # components (security id's) of a composite security
  def components
    captures.uniq.map(&:component_id)
  end
  
  # is security a composite?
  def composite?
    components.length > 0
  end
  
  # number of shares of the complete issuance of a security (optional, for a given entity)
  def shares(entity_id = nil)
    if entity_id
      sell_condition = "buyer_id = #{entity_id}"
      buy_condition = "seller_id = #{entity_id}"
    else
      sell_condition = "seller_id = #{company.entity_id}"
      buy_condition = "buyer_id = #{company.entity_id}"
    end
    case kind.to_i
      when (1) # common
        issued = transactions.where(sell_condition).uniq.map(&:shares).sum
        repurchased = transactions.where(buy_condition).uniq.map(&:shares).sum
        issued > 0 ? issued - repurchased : 0.0
      when (2) # options
        0.0
      when (3) # debt
        0.0
      when (4) # pref
        # have not incorporated dividends yet ...
        issued = transactions.where(sell_condition).uniq.map(&:shares).sum
        repurchased = transactions.where(buy_condition).uniq.map(&:shares).sum
        issued > 0 ? issued - repurchased : 0.0
      when (5) #composite
        issued = transactions.where(sell_condition).uniq.map(&:shares).sum
        repurchased = transactions.where(buy_condition).uniq.map(&:shares).sum
        issued > 0 ? issued - repurchased : 0.0
    end
  end

  # number of common shares the complete issuance of a security converts into (optional, for a given entity)
  def shares_common(entity_id = nil)
    if entity_id
      sell_condition = "buyer_id = #{entity_id}"
      buy_condition = "seller_id = #{entity_id}"
    else
      sell_condition = "seller_id = #{company.entity_id}"
      buy_condition = "buyer_id = #{company.entity_id}"
    end
    case kind.to_i
      when (1) # common
        issued = transactions.where(sell_condition).uniq.map(&:shares).sum
        repurchased = transactions.where(buy_condition).uniq.map(&:shares).sum
        issued > 0 ? issued - repurchased : 0.0
      when (2) # options
        issued = transactions.where(sell_condition).uniq.map(&:shares).sum
        repurchased = transactions.where(buy_condition).uniq.map(&:shares).sum
        issued > 0 ? issued - repurchased : 0.0
      when (3) # debt
        if transactions.size > 0
          issuances = transactions.where(sell_condition).uniq.map{|i| [i.date,i.dollars]}
          repurchases = transactions.where(buy_condition).uniq.map{|i| [i.date,i.dollars]}
          dollars_issued = issuances.map{|i| i[1]*(1.0 + (Date.today - i[0])*int_rate/365.0)}.sum
          dollars_repurchased = repurchases.map{|i| i[1]*(1.0 + (Date.today - i[0])*int_rate/365.0)}.sum
          (dollars_issued - dollars_repurchased)/(company.most_recent_price - (disc_fact || 0.0))
        else
          0.0
        end
      when (4) # pref
        # have not incorporated dividends yet ...
        if non_convert
          0.0
        else
          issued_dollars = transactions.where(sell_condition).uniq.map(&:dollars).sum
          issued_shares = transactions.where(sell_condition).uniq.map(&:shares).sum
          repurchased_shares = transactions.where(buy_condition).uniq.map(&:shares).sum
          conversion_price = issued_dollars.to_f / issued_shares.to_f
          issued_shares > 0 ? (issued_dollars - (repurchased_shares * conversion_price)) / conversion_price : 0.0
        end
      when (5) # composite
        # still need to flesh this out more ... for options, debt, and pref ...
        shares * captures.map{|c| (c.component.kind == "1" ? c.factor.to_f : 0.0)}.sum
    end
  end
  
  # dollar amount invested less sold
  def net_dollars
    transactions.where(:seller_id => company.entity_id).sum(:dollars) - 
    transactions.where(:buyer_id => company.entity_id).sum(:dollars)
  end
  
  # total liquidation payout associated with the security
  def liq_payout
    if (kind.to_i == 3) #debt
      shares_common * (company.most_recent_price - (disc_fact || 0.0))
    elsif (kind.to_i == 4) #pref
      (liq_pref ? net_dollars * liq_pref : 0.0) + (per_class_liq || 0.0)
    else
      0.0
    end
  end
  
  # portion of per_class_liq to entity id.
  def per_class_portion(e_id = nil)
    if (e_id != nil) || (shares != 0)
      portion = shares(e_id)/shares.to_f
      portion * (per_class_liq || 0.0)
    else
      0.0
    end
  end
  
  # participation cap
  def cap
    if participating
      (partic_cap ? net_dollars * partic_cap : nil)
    elsif (liq_pref || per_class_liq)
      liq_payout
    else
      0.0
    end
  end
  
  # security's company's priorities
  # returned as a Priorities object
  def priorities
    p = company.priorities # see priorities.rb in lib
  end
  
  # security's priority
  # returned as an integer
  def priority
    begin
      priorities.data.select{|p| p[1].include?(id)}.first[0]
    rescue
      priorities.data.size
    end
  end
    
  
  # amount of liquidity preference that comes ahead of security
  def senior_liq
    if priority > 0
      priorities.data[0, priority].map{|p| p[1]}.flatten.map(&:s).map(&:liq_payout).sum
    else
      0.0
    end
  end
  
  # amount of liquidity preference that comes after security
  def junior_liq
    if priority > 0
      priorities.data[priority+1,priorities.data.length-(priority+1)].map{|p| p[1]}.flatten.map(&:s).map(&:liq_payout).sum
    else
      0.0
    end
  end
  
  def percent
    if company.shares_common.to_f > 0.0
      shares_common.to_f/(company.shares_common.to_f)
    else
      0.0
    end
  end
  
  # returns LiqPayoutChart object associated with security
  # but does ont include the perturbation associated slope adjustment when not all securities convert.
  def liq_payout_chart_prelim
    lpc = LiqPayoutChart.new
    one = [0.0,0.0]
    two = [senior_liq, 0.0]
    three = [senior_liq + liq_payout, liq_payout]
    four = [[liq_payout/percent, company.liq_pref].max, liq_payout]
    five = four
    lpc.data([one, two, three, four, five])
    lpc
  end
  
  # returns LiqPayoutChart object associated with security
  # with the perturbation associated slope adjustment included (see liq_payout_chart_prelim)
  def liq_payout_chart
    basket = company.liq_payout_charts
    basket.select{|i| i[0] == id}
  end
  
end
