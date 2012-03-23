class AddNonConvertToSecurities < ActiveRecord::Migration
  def self.up
    add_column :securities, :non_convert, :boolean
  end

  def self.down
    remove_column :securities, :non_convert
  end
end
