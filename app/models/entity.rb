class Entity < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name, :scope => :company_id
  belongs_to :company
  has_many :sales, :foreign_key => :seller_id, :class_name => "Transaction"
  has_many :buys, :foreign_key => :buyer_id, :class_name => "Transaction"
  has_one :investment
  has_many :requests
  has_many :securities, :through => :buys

  # dollar amount invested less sold (for given security_id (s_id) if passed)
  def net_dollars(s_id = nil)
    if s_id
      buys.where(:security_id => s_id).sum(:dollars) - sales.where(:security_id => s_id).sum(:dollars)
    else
      buys.sum(:dollars) - sales.sum(:dollars)
    end
  end
  
  # liquidation preference (for given security_id (s_id) if passed)
  def liq_pref(s_id = nil)
    if s_id
      security = s_id.s
      if security.composites.length > 0 # is it part of a composite?
        composites = security.composites
        owned_composites = composites.select{|c| c.shares(id) > 0.0}
        portion = owned_composites.map{|o| o.shares(id) * o.captures.select{|c| c.component.id == security.id}.first.factor}.sum
        # next we assume factor is in dollars or shares appropriately. should make this more robust.
        temp = (portion * security.liq_pref)
        if security.shares > 0.0
          temp += portion * (security.per_class_liq || 0.0) / security.shares
        end
        temp
      else
        temp = ((security.liq_pref || 0) * net_dollars(s_id))
        if security.shares > 0.0
          temp += ((security.per_class_liq || 0.0) * security.shares(id) / security.shares)
        end
        temp
      end
    else
      securities.uniq.map{|s| liq_pref(s.id)}.sum
      # need to add components ... here ...
    end
  end
  
  # participation cap preference (for given security_id (s_id) if passed)
  def cap(s_id = nil)
    if s_id
      security = s_id.s
      ((security.liq_pref || 0) * net_dollars(s_id)) * (security.partic_cap || 1.0)
    else
      securities.uniq.map{|s| cap(s.id)}.sum
    end
  end
  
  # creates a current liquidation chart
  # see the LiqChart class in lib directory
  # also see version in company model
  def liq_chart
    temp =[]
    l_c = LiqChart.new
    liq_secs = company.securities.uniq.select{ |s| s.liq_payout > 0.0}
    liq_secs.each do |liq_sec|
      amount = liq_pref(liq_sec.id) || 0.0
      amount = amount || 0.0
      puts amount
      temp += [[liq_sec.rank, (amount + liq_sec.per_class_portion(id))]]
    end
    ranks = temp.map{|t| t[0]}.uniq.sort
    pairs = ranks.map{|r| [r, temp.select{|t| t[0] == r}.map{|tt| tt[1]}.sum ]}
    pairs.each do |pair|
      l_c.push pair
    end
    l_c
  end
  
  # ownership (of a given security) as converted to common
  def shares_common(security_id = nil)
    if security_id
      security_id.to_i.s.shares_common(id)
    else
      securities.uniq.map{|s| s.shares_common(id)}.sum
    end
  end
  
  # percent ownership of company on a fully diluted basis
  def fully_diluted
    100 * (shares_common.to_f / company.shares_common.to_f)
  end
  
  # creates a current percentage chart
  # see the PercentageChart class in lib directory
  def percentage_chart
    p_c = PercentageChart.new
    p_secs = securities.uniq.map(&:id)
    total_shares_common = company.shares_common.to_f
    p_secs.each do |p_sec|
      p_c.push [p_sec, 100*(shares_common(p_sec).to_f/total_shares_common)]
    end
    p_c
  end
  
end