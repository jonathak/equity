class King < ActiveRecord::Base
  belongs_to :company
  belongs_to :user
  validates_presence_of :company_id, :user_id
  validates_uniqueness_of :company_id, :scope => :user_id
  validates_uniqueness_of :user_id, :scope => :company_id
  validates_numericality_of :user_id, {:greater_than => 0, :only_integer => true, :allow_nil => false}
  validates_numericality_of :company_id, {:greater_than => 0, :only_integer => true, :allow_nil => false}
end
