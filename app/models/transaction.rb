class Transaction < ActiveRecord::Base
  validates_presence_of :security_id, :seller_id, :buyer_id, :date
  validates_numericality_of :security_id, :seller_id, :buyer_id, {:greater_than => 0, :only_integer => true}
  validates_numericality_of :dollars, :ex_price, {:greater_than => 0, :allow_nil => true}
  validates_numericality_of :shares, {:greater_than_or_equal_to => 0, :allow_nil => true, :only_integer => true}
  validate :buyer_must_be_different_from_seller
  has_one :company, :through => :security
  belongs_to :seller, :class_name => 'Entity'
  belongs_to :buyer, :class_name => 'Entity'
  belongs_to :security
  
  def buyer_must_be_different_from_seller
    errors.add(:expiration_date, "buyer_must_be_different_from_seller") if buyer_id == seller_id
  end
  
end
