class Investment < ActiveRecord::Base
  validates_uniqueness_of :company_id, :scope => :entity_id
  validates_uniqueness_of :entity_id
end
