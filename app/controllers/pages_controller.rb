class PagesController < ApplicationController

def welcome
  @preview_products = Product.roots.limit(4)
end

def contact_us
end

def about_us
end

end
