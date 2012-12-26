class CreateOrders < ActiveRecord::Migration
  def change
    create_table :order do |t|
      t.string :username
      t.decimal :total, :null => false, :default => 0
      t.string :email
      t.string :status
      t.string :address1
      t.string :address2
      t.string :telephone_number
      t.string :province
      t.string :zip_code
      t.integer :quantity
      t.timestamps
    end
  end
end
