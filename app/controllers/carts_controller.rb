class CartsController < ApplicationController

  before_filter :require_login #, :except => [:sign_in]

  def sign_in
    @user_session = UserSession.new
    #logger.debug ["XXXXXXX"] << params[:product_id]
    if request.post?
      @user_session = UserSession.new(params[:user_session])
      if @user_session.save
        redirect_to new_cart_path(:product_id => @product_id)
      else
        flash[:error] = "An error has occurred while trying to sign you in"
      end
    end
  end

  def new
    @cart = Cart.new
  end

  def edit
    @cart = Cart.find(params[:id])
    #@cart.orders = 
  end

  def create
    @cart = Cart.new(params[:cart])
    #@cart.orders =
  end

  def update
    @cart = Cart.find(params[:id])
  end

  def confirm_orders
  end

  def thanks_for_order
  end


  protected

  def require_login
    unless current_user
      flash[:error] = "You must be logged in to access this page"
      redirect_to products_path
      #redirect_to sign_in_carts_path
    end 
  end
end
