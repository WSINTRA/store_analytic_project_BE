class CreateCart < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.bigint :user_id
      t.timestamps
    end
  end
end
