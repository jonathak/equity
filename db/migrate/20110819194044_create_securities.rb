class CreateSecurities < ActiveRecord::Migration
  def self.up
    create_table :securities do |t|
      t.string :name
      t.string :kind
      t.integer :rank
      t.float :liq_pref
      t.float :disc_fact
      t.float :warrant_cov
      t.boolean :participating
      t.float :partic_cap
      t.float :int_rate
      t.float :div_rate

      t.timestamps
    end
  end

  def self.down
    drop_table :securities
  end
end
