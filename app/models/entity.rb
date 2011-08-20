class Entity < ActiveRecord::Base
  validates_presence_of :name
  has_many :transactions
  has_many :companies, :through => :transactions
  has_many :securities, :through => :transactions
  has_many :sales, :foreign_key => :seller_id, :class_name => "Transaction"
  has_many :sellers, :through => :sales
  has_many :buys, :foreign_key => :buyer_id, :class_name => "Transaction"
  has_many :buyers, :through => :buys
end
