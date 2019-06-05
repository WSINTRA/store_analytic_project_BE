class CreateProduct < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :quantity
      t.string :image
      t.decimal :price, :decimal, :precision => 8, :scale => 2
      t.string :description

      t.timestamps
    end
  end
end
