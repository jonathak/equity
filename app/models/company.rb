class Company < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name, :case_sensitive => false
  has_many :transactions, :through => :securities
  has_many :securities
  has_many :entities
  has_many :investments
  
  # id's of entity objects that represents company as an investor
  def alias_ids
    investments.map(&:entity_id)
  end
  
  # id's of companies that company directly invests in
  def directs
    alias_ids.map(&:company).map(&:id)
  end
  
  # array of company_id investment chains
  def chains
    #need to make this one
  end
  
  # array of company_ids representing linked investors
  def owners
    entities.map do |e|
      e.investment.company.id if e.investment
    end
  end
  
end
