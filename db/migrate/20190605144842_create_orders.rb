class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
    	t.bigint :user_id
    	t.decimal :total, :decimal, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
