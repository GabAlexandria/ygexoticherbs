class FixOrdersTable < ActiveRecord::Migration
  def up
    rename_table :order, :orders
  end

  def down
    rename_table :orders, :order
  end
end
