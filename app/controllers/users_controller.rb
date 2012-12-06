class UsersController < ApplicationController
  before_filter :require_user, :only => [:edit, :update]
  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "Login successful"
      redirect_to products_path
    else
     flash[:error] = "There was a problem logging you in"
     render :new
    end
  end

  def update
    @user = User.find(params[:id])
    @user.attributes = params[:user]
    if @user.save
      flash[:notice] = "Your account has been updated"
      redirect_to products_path
    else
      flash[:error] = "There was a problem updating your account."
      render :edit
    end
  end

private
  def require_user
    unless @current_user.present?
      flash[:error] = "You must be logged in to view this page"
      redirect_to index_products_path
    end
  end

end
