class AddDefaultToQuantityOnOrders < ActiveRecord::Migration
  def change
    change_column :orders, :quantity, :integer, :default => 0, :null => false
  end
end
