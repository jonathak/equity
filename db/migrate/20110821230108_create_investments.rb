class CreateInvestments < ActiveRecord::Migration
  def self.up
    create_table :investments do |t|
      t.integer :company_id
      t.integer :entity_id

      t.timestamps
    end
  end

  def self.down
    drop_table :investments
  end
end
