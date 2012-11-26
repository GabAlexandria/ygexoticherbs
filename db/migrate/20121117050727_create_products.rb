class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :slug
      t.integer :price, :default => 0, :null => false
      t.text :description
      t.boolean :in_stock, :default => true, :null => false
      t.integer :quantity, :default => 0, :null => false
      t.string :packaging_type
      t.boolean :available, :default => true, :null => false
      t.timestamps
    end
  end
end
