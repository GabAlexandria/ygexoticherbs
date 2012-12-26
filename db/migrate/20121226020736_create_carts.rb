class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.decimal :cart_total, :null => false, :default => 0
      t.string :username
      t.string :email
      t.string :status
      t.string :address1
      t.string :address2
      t.string :province
      t.string :zip_code
      t.string :telephone_number
      t.integer :cart_quantity, :null => false, :default => 0
      t.timestamps
    end
  end
end
