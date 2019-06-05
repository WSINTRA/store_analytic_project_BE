class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :telephone
      t.string :street_address
      t.string :state
      t.string :password_digest
      t.string :email
      t.boolean :admin, default: false
      t.boolean :employee, default: false

      t.timestamps
    end
  end
end
