class ProductsController < ApplicationController

  def index
    @products = Product.roots.paginate(:page => params[:page], :per_page => 4).search(params[:search])
  end

  def show
    @product = Product.find(params[:id])
  end
end
