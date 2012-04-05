class CreatePossessions < ActiveRecord::Migration
  def self.up
    create_table :possessions do |t|
      t.integer :composite_id
      t.integer :component_id

      t.timestamps
    end
  end

  def self.down
    drop_table :possessions
  end
end
