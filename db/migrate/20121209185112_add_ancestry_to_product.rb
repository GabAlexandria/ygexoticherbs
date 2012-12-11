class AddAncestryToProduct < ActiveRecord::Migration
  def change
    add_column :products, :ancestry, :string
  end
end
