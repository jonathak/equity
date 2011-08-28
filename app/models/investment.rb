class Investment < ActiveRecord::Base
  validates_uniqueness_of :company_id, :scope => :entity_id
  validates_uniqueness_of :entity_id
  validate :investor_company_conflict
  belongs_to :company
  belongs_to :entity
  
  def investor_company_conflict
    errors.add(:entity_id, "already belongs to investor via entity-company connection") if
      company_id == entity_id.entity.company.id
    end
end
