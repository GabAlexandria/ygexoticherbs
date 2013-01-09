class Cart < ActiveRecord::Base
  attr_accessible :email, :cart_total, :cart_quantity, :address1, :address2, :province, :zip_code, :telephone_number
  
  validates_presence_of :email

  has_many :orders
  belongs_to :user
  belongs_to :mailing_list

end
