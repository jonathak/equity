class Possession < ActiveRecord::Base
  validates_presence_of :composite_id, :component_id
  validates_numericality_of :composite_id, :component_id, {:greater_than => 0, :only_integer => true}
  validate :composite_must_be_different_from_component
  belongs_to :composite, :class_name => "Security"
  belongs_to :component, :class_name => "Security"
  
  def composite_must_be_different_from_component
    errors.add(:expiration_date, "composite_must_be_different_from_component") if composite_id == component_id
  end
end
