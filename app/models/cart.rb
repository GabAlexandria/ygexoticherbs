class Cart < ActiveRecord::Base
  attr_accessible :email, :cart_total, :cart_quantity, :address1, :address2, :province, :zip_code, :telephone_number
  has_many :orders
end
