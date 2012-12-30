class Order < ActiveRecord::Base
  attr_accessible :email, :total, :address1, :address2, :province, :zip_code, :telephone_number, :quantity, :cart_id
  belongs_to :cart
end
