class AddPerClassLiqToSecurities < ActiveRecord::Migration
  def self.up
    add_column :securities, :per_class_liq, :float
  end

  def self.down
    remove_column :securities, :per_class_liq
  end
end
