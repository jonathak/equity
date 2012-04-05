class AddFactorToPossessions < ActiveRecord::Migration
  def self.up
    add_column :possessions, :factor, :float
  end

  def self.down
    remove_column :possessions, :factor
  end
end
