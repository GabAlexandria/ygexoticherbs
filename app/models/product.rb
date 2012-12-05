class Product < ActiveRecord::Base
  # attr_accessible :title, :body
  validate_presence_of :name, :message => "Please enter a name"
  validate_presence_of :slug, :message => "Please enter a slug"
  validate_presence_of :price, :message => "Please enter a non-zero price"
  validate_presence_of :description, :message = "Please enter a description for the product"
  validate_presence_of :quantity, :message = "Please enter a non-zero quantity"

end
