class CartsController < ApplicationController

  def enter_email
  end

  def new
    @cart = Cart.new
  end

  def edit
    @cart = Cart.find(params[:id])
    @cart.orders = 
  end

  def create
    @cart = Cart.new(params[:cart])
    @cart.orders =
  end

  def update
    @cart = Cart.find(params[:id])
  end

  def confirm_orders
  end

  def thanks_for_order
  end

end
