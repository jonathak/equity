class CreateTransactions < ActiveRecord::Migration
  def self.up
    create_table :transactions do |t|
      t.integer :company_id
      t.integer :security_id
      t.integer :seller_id
      t.integer :buyer_id
      t.integer :shares
      t.float :dollars
      t.float :ex_price
      t.date :date

      t.timestamps
    end
  end

  def self.down
    drop_table :transactions
  end
end
