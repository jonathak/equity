class Company < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name, :case_sensitive => false
  has_many :transactions, :through => :securities
  has_many :securities
  has_many :entities
end
