class User < ActiveRecord::Base
  # attr_accessible :title, :body
  acts_as_authentic

  attr_accessible :username
                  :email
                  :password
                  :password_confirmation

  validates_uniqueness_of :username, :message => "This username is taken. Please use another"
  validates_presence_of :username, :message => "Please provide a username"
  validates_length_of :username, :in => 6..100, :message => "Your username is too short. Please provide a username that is more than 6 characters long"

  validates_uniqueness_of :email, :message => "An account already exists with this email"
  validates_presence_of :email, :message => "Please provide an email address"
  validates_format_of :email, :with => Authlogic::Regex.email, :message => "The email provided is not a valid format"
  validates_length_of :email, :in => 6..100, :message => "The email provided is too short"

  validates_presence_of :password, :message => "Please provide a password"
  validates_length_of :password, :in => 6..100, :message => "Your password must be longer than 6 characters long"

  validates_presence_of :password_confirmation, :message => "Please confirm your password"
end
