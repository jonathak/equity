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
      l_p = security.liq_pref || 0
      l_p*net_dollars(s_id)
    else
      securities.map{|s| liq_pref(s.id)}.sum
    end
  end
  
  # creates a current liquidation chart
  # see the LiqChart class in lib directory
  # also see version in company model
  def liq_chart
    temp =[]
    l_c = LiqChart.new
    liq_secs = securities.where('liq_pref > 0.0').uniq
    liq_secs.each do |liq_sec|
      amount = buys.where("security_id = #{liq_sec.id}").sum("dollars") -
              sales.where("security_id = #{liq_sec.id}").sum("dollars")
      temp += [[liq_sec.rank, amount*liq_sec.liq_pref]]
    end
    ranks = temp.map{|t| t[0]}.uniq.sort
    pairs = ranks.map{|r| [r, temp.select{|t| t[0] == r}.map{|tt| tt[1]}.sum ]}
    pairs.each do |pair|
      l_c.push pair
    end
    l_c
  end
  
end