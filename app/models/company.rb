class Company < ActiveRecord::Base
  validates_presence_of :name
  # validates_uniqueness_of :name, :case_sensitive => false
  has_many :transactions, :through => :securities
  has_many :securities
  has_many :entities
  has_many :investments
  has_many :invitations
  has_many :kings
  has_many :users, :through => :kings
  has_many :requests
  
  # id's of entity objects that represents company as an investor
  def alias_ids
    investments.map(&:entity_id)
  end
  
  # id of entity object that represents company as an investor in "direct (d)" investment of company
  def alias_id(d)
    alias_ids.select{|e_id| e_id.entity.company_id == d}.first
  end
  
  # entity_id of entity that represent itself in itself
  def entity_id
    entities.select{|e| e.name = name}.first.id
  end
  
  # id's of companies that company directly invests in
  def directs
    alias_ids.map(&:e).map(&:company).map(&:id)
  end
  
  # array of company_id investment chains
  def chains
    if directs == []
      [[self.id]]
    else
      directs.map(&:c).map(&:chains).reduce(:+).map{|i| [self.id]+i}
    end
  end
  
  # id's of companies that company indirectly invests in
  def indirects
    chains.map{|c| (c.slice(2,c.length-2) || [])}.flatten.uniq
  end
  
  # investment pathway(s) to company having target_id
  def pathways(target_id)
    if (target_id && indirects.include?(target_id))
      hits = chains.select{|chain| chain.include? target_id}
      paths = hits.map{|chain| chain.first(chain.index(target_id)+1)}
      paths.uniq
    end
  end
  
  # array of company_ids representing linked investors
  def owners
    entities.map{|e| (e.investment.company.id if e.investment)}.reject{|i| i == nil}
  end
  
  # array of company_id chains downsteam of cash flow distributions
  def owner_chains
    if owners == []
      [[self.id]]
    else
      owners.map(&:c).map(&:owner_chains).reduce(:+).map{|i| [self.id]+i}
    end
  end
  
  #total liquidation preference of all securities and entities
  def liq_pref
    entities.map(&:liq_pref).sum
  end
  
  # creates a current liquidation chart
  # see the LiqChart class in lib directory
  # also see version in entity model
  def liq_chart
    temp =[]
    l_c = LiqChart.new
    liq_secs = securities.where('liq_pref > 0.0').uniq
    liq_secs.each do |liq_sec|
      amount = transactions.where("security_id = #{liq_sec.id} AND seller_id = #{entity_id}").sum("dollars") -
               transactions.where("security_id = #{liq_sec.id} AND buyer_id = #{entity_id}").sum("dollars")
      temp += [[liq_sec.rank, amount*liq_sec.liq_pref]]
    end
    ranks = temp.map{|t| t[0]}.uniq.sort
    pairs = ranks.map{|r| [r, temp.select{|t| t[0] == r}.map{|tt| tt[1]}.sum ]}
    pairs.each do |pair|
      l_c.push pair
    end
    l_c
  end
  
  def priorities
    result = Priorities.new
    ranks = securities.where('liq_pref > 0.0').uniq.map(&:rank).sort
    priorities = (0..(ranks.size-1)).to_a
    result.set_data (priorities.map{|p| [p,securities.select{|s| s.rank == ranks[p]}.map(&:id)]})
    result
  end
  
  # number of common shares in company on fully diluted basis
  def shares_common
    securities.uniq.map(&:shares_common).sum
  end
  
  #security_id of company's common stock
  def common_id
    securities.where('name' == 'common').first.id
  end
  
  # array of LiqPayoutChart objects linked with each security id
  def liq_payout_charts
    basket = securities.select{|se| se.liq_payout > 0.0}.map{|s| [s.id, s.liq_payout_chart_prelim]}
    equilib = basket.map{|i| i[1].five[0]}.max
    basket.each do |i|
      sec = i[0].s
      sec.percent
      sec.liq_pref
      sec.junior_liq
      i[1].data[4] = [equilib, equilib*sec.percent]
      percent_liq = basket.select{|j| j[1].four[0] > i[1].four[0]}.map{|k| k[0].s.percent}.sum
      extra = sec.junior_liq - (percent_liq/(sec.percent))*sec.liq_payout
      i[1].data[3][0] += extra
    end
    basket
  end
  
  # exit price upon which all securities convert to common
  def equilibrium_price
    securities.uniq.reject{|s| s.percent == 0.0}.map{|s| s.liq_payout/s.percent}.max
  end
  
  # array of prices where securities convert 
  # ordered pairs [security_id, exit price]
  def conversions
    securities.map(&:id).conversions_helper
  end
  
end
