class CreateKings < ActiveRecord::Migration
  def self.up
    create_table :kings do |t|
      t.integer :company_id
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :kings
  end
end
