class AddCompanyIndex < ActiveRecord::Migration
  def self.up
    add_column :entities, :company_id, :integer
    add_column :securities, :company_id, :integer
  end

  def self.down
    remove_column :entities, :company_id
    remove_column :securities, :company_id
  end
end
