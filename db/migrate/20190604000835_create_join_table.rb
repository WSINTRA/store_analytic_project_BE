class CreateJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_table :product_categories do |t|
      t.references :product, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true
      # t.index [:category_id, :product_id]
    end
  end
end
