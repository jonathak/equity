class Security < ActiveRecord::Base
  validates_presence_of :name, :kind
  validates_uniqueness_of :name, :scope => :company_id
  validates_numericality_of :rank, {:greater_than => 0, :less_than => 101, :only_integer => true, :allow_nil => true}
  validates_numericality_of :liq_pref, :partic_cap, {:greater_than => 0, :allow_nil => true}
  validates_numericality_of :disc_fact, :warrant_cov, :int_rate, :div_rate, 
    {:greater_than => 0, :less_than => 1.0, :allow_nil => true}
  belongs_to :company
  has_many :transactions
  has_many :buyers, :through => :transactions
  has_many :sellers, :through => :transactions
end
