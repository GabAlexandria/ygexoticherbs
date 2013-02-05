class Cart < ActiveRecord::Base
  attr_accessible :username, :email, :cart_total, :cart_quantity, :address1, :address2, :province, :zip_code, :telephone_number, :user_id, :cart_id, :product_id, :product_name, :status
  
  validates_presence_of :email
  validates_presence_of :cart_total
  validates_presence_of :cart_quantity
  validates_presence_of :address1
  validates_presence_of :address2
  validates_presence_of :province
  validates_presence_of :zip_code
  validates_presence_of :telephone_number

  has_many :orders
  belongs_to :user
  belongs_to :mailing_list

end
