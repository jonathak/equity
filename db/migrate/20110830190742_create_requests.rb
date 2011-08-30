class CreateRequests < ActiveRecord::Migration
  def self.up
    create_table :requests do |t|
      t.integer :entity_id
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :requests
  end
end
