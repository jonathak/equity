class Company < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name, :case_sensitive => false
  has_many :transactions
  has_many :securities, :through => :transactions
  has_many :entities, :through => :transactions  
end
