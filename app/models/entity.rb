class Entity < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name, :scope => :company_id
  belongs_to :company
  has_many :sales, :foreign_key => :seller_id, :class_name => "Transaction"
  has_many :buys, :foreign_key => :buyer_id, :class_name => "Transaction"
  has_one :investment
end
