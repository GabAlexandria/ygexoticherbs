class Admin::UsersController < Admin::BaseController


  def index
    @admin_users = Admin::User.all
  end

  def show
    @admin_user = Admin::User.find(params[:id])
  end

  def new
    @admin_user = Admin::User.new
  end

  def edit
    @admin_user = Admin::User.find(params[:id])
  end

  def create
    @admin_user = Admin::User.new(params[:admin_user])
  end

  def update
    @admin_user = Admin::User.find(params[:id])
  end

  def destroy
    @admin_user = Admin::User.find(params[:id])
    @admin_user.destroy
  end
end
