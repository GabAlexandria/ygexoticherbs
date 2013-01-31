class PagesController < ApplicationController

def welcome
  @browser_title = "Welcome"
  @preview_products = Product.roots.limit(4)
end

def contact_us
  @browser_title = "Contact Us"
end

def about_us
end

end
