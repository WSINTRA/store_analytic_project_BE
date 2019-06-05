class CreateOrderPurchases < ActiveRecord::Migration[5.2]
  def change
    create_table :order_purchases do |t|
      t.references :order, index: true, foreign_key: true
      t.references :purchase, index: true, foreign_key: true
      t.timestamps
    end
  end
end
