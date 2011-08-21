class Transaction < ActiveRecord::Base
  validates_presence_of :company_id, :security_id, :seller_id, :buyer_id, :date
  validates_numericality_of :company_id, :security_id, :seller_id, :buyer_id, {:greater_than => 0, :only_integer => true}
  validates_numericality_of :dollars, :ex_price, {:greater_than => 0, :allow_nil => true}
  validates_numericality_of :shares, {:greater_than => 0, :allow_nil => true, :only_integer => true}
  belongs_to :company
  belongs_to :seller, :class_name => 'Entity'
  belongs_to :buyer, :class_name => 'Entity'
end
