class Entity < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name, :scope => :company_id
  belongs_to :company
  has_many :sales, :foreign_key => :seller_id, :class_name => "Transaction"
  has_many :buys, :foreign_key => :buyer_id, :class_name => "Transaction"
  has_one :investment
  has_many :requests

  # dollar amount invested less sold (for given security_id (s_id) if passed)
  def net_dollars(s_id = nil)
    if s_id
      buys.where(:security_id => s_id).sum(:dollars) - sales.where(:security_id => s_id).sum(:dollars)
    else
      buys.sum(:dollars) - sales.sum(:dollars)
    end
  end
end