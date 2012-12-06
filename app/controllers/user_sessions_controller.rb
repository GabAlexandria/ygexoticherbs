class UserSessionsController < ApplicationController

  def new
    @user_session = UserSession.new
  end

  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      redirect_to admin_products_path
    else
      flash[:error] = "An error has occurred. Please try again."
      render :new
    end
  end

  def destroy
    @user_session = UserSession.find(params[:id])
    @user_session.destroy
    flash[:notice] = "You have been logged out"
    redirect_to products_path
  end
end
