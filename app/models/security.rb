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
  
  # number of common shares the complete issuance of a security converts into (optional, for a given entity)
  def shares_common(entity_id = nil)
    if entity_id
      sell_condition = "seller_id = #{company.entity_id} AND buyer_id = #{entity_id}"
      buy_condition = "buyer_id = #{company.entity_id} AND seller_id = #{entity_id}"
    else
      sell_condition = "seller_id = #{company.entity_id}"
      buy_condition = "buyer_id = #{company.entity_id}"
    end
    case kind.to_i
      when (1 || 2) # common or options
        issued = transactions.where(sell_condition).uniq.map(&:shares).sum
        repurchased = transactions.where(buy_condition).uniq.map(&:shares).sum
        issued - repurchased
      when 3 # debt
        issuances = transactions.where(sell_condition).uniq.order("date ASC").map{|i| [i.date,i.dollars]}
        repurchases = transactions.where(buy_condition).uniq.order("date ASC").map{|i| [i.date,i.dollars]}
        dollars_issued = issuances.map{|i| i[1]*(Date.today - i[0])*int_rate}.sum
        dollars_repurchased = repurchases.map{|i| i[1]*(Date.today - i[0])*int_rate}.sum
        (dollars_issued - dollars_repurchased)/(1.0 - disc_fact)
      when 4 # pref
        # have not incorporated dividends yet ...
        issued_dollars = transactions.where(sell_condition).uniq.map(&:dollars).sum
        issued_shares = transactions.where(sell_condition).uniq.map(&:shares).sum
        repurchased_shares = transactions.where(buy_condition).uniq.map(&:shares).sum
        conversion_price = issued_dollars.to_f / issued_shares.to_f
        (issued_dollars - (repurchased_shares * conversion_price)) / conversion_price
    end
  end
  
end
