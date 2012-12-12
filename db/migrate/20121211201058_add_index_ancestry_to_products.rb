class AddIndexAncestryToProducts < ActiveRecord::Migration
  def change
    add_index :products, :ancestry
  end
end
