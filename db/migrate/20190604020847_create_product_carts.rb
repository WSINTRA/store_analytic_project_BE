class CreateProductCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :product_carts do |t|
      t.references :product, index: true, foreign_key: true
      t.references :cart, index: true, foreign_key: true
      t.timestamps
    end
  end
end
