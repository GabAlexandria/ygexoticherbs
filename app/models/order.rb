class Order < ActiveRecord::Base
  attr_accessible :username, :email, :total, :address1, :address2, :province, :zip_code, :telephone_number, :quantity, :cart_id, :product_id, :product_name, :status

  belongs_to :cart
  belongs_to :user
  belongs_to :mailing_list
  belongs_to :product

  validates_presence_of :email
  validates_presence_of :total
  validates_presence_of :address1
  validates_presence_of :province
  validates_presence_of :zip_code
  validates_presence_of :telephone_number
  validates_presence_of :quantity
  validates_presence_of :product_name
  validates_presence_of :cart_id
  
end
