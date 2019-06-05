class CreatePurchases < ActiveRecord::Migration[5.2]
  def change
    create_table :purchases do |t|
        t.bigint :product_id
        t.integer :quantity
      t.timestamps
    end
  end
end
