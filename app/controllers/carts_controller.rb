class CartsController < ApplicationController

  before_filter :require_login #, :except => [:sign_in]

  def sign_in
    @user_session = UserSession.new
    @prod_id = params[:product_id]
    if request.post?
      @user_session = UserSession.new(params[:user_session])
      if @user_session.save
        redirect_to new_cart_path(:product_id => @prod_id)
      else
        flash[:error] = "An error has occurred while trying to sign you in"
      end
    end
  end

  def new
    @cart = Cart.new
    @product = Product.find(params[:product_id])
    @order = Order.new
  end

  def edit
    @cart = Cart.find(params[:id])
  end

  def create
    @product = Product.find(params[:cart][:product_id])
    @current_user = current_user
    order_quantity = params[:cart][:order][:quantity].to_i
    total_price = @product.price * order_quantity
    @user_info = params[:cart]
    @user_info.delete_if { |k, v| (k == "order" || k == "product_id")}
    @user_info.merge(:user_name => @current_user.username, 
                     :email => @current_user.email, 
                     :status => "incomplete")
    @cart = Cart.new(:cart_total => total_price,
                     :cart_quantity => order_quantity,
                     :user_id => @current_user.id)
    @order = Order.new(:total => total_price,
                       :quantity => order_quantity,
                       :cart_id => @cart.id,
                       :product_id => @product.id,
                       :product_name => @product.name)
   @cart.update_attributes(@user_info)
   @order.update_attributes(@user_info)
   if @cart.save && @order.save
     redirect_to confirm_orders_path(@cart.id)
   else
     flash[:error] = "An error has occurred"
     render :action => :new
   end
    
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
    unless current_user && current_user.admin
      flash[:error] = "You must be logged in to access this page"
      redirect_to products_path
      #redirect_to sign_in_carts_path
    end 
  end
end
