class Admin::ProductsController < Admin::BaseController

  def index
    @products = Product.roots.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(params[:product])
    if @product.save
      flash[:notice] = "A new product has been created"
      redirect_to admin_products_path
    else
      flash[:error] = "There was a problem"
      render :action => :new
    end
  end

  def update
    @product = Product.find(params[:id])
    @product.attributes = params[:product]
    if @product.save
      flash[:notice] = "The product has been updated"
      redirect_to admin_products_path
    else
      flash[:error] = "There was a problem updating this product"
      render :action => :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
  end
end
