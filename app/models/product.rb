class Product < ActiveRecord::Base
  # attr_accessible :title, :body

  attr_accessible :name,
                  :slug,
                  :price,
                  :description,
                  :quantity,
                  :available,
                  :in_stock,
                  :packaging_type,
                  :scientific_name,
                  :recommendations

  validates_presence_of :name, :message => "Please enter a name"
  validates_presence_of :slug, :message => "Please enter a slug"
  validates_presence_of :price, :message => "Please enter a non-zero price"
  validates_presence_of :description, :message => "Please enter a description for the product"
  validates_presence_of :quantity, :message => "Please enter a non-zero quantity"
  validates_presence_of :packaging_type, :message => "Please choose a packaging type"


  def truncated_descript
    (description.split[0..9].join(" ") + "...")
  end
end
