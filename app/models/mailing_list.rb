class MailingList < ActiveRecord::Base
  attr_accessible :name, :email, :receives_emails
  
  #validates_presence_of :name, :message => "You must provide us with a name"
  validates_presence_of :email, :message => "Please provide an email address"
  validates_uniqueness_of :email, :message => "This email has already been added to our mailing list."
  validates_format_of :email, :with => Authlogic::Regex.email, :message => "The provided email is not a valid format."
  validates_length_of :email, :in => 6..100, :message => "The email provided is too short."

  has_many :carts
  has_many :orders

end
