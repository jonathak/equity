class RemoveCompanyIdFromTransaction < ActiveRecord::Migration
  def self.up
    remove_column :transactions, :company_id
  end

  def self.down
    add_column :transactions, :company_id, :integer
  end
end
