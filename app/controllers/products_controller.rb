class ProductsController < ApplicationController

  def index
    @browser_title = "All Products"
    @products = Product.roots.paginate(:page => params[:page], :per_page => 4).search(params[:search])
  end

  def show
    @product = Product.find(params[:id])
    @browser_title = @product.name
  end
end
