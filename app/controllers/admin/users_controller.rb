class Admin::UsersController < Admin::BaseController


  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "A new user has been created"
      redirect_to admin_users_path
    else
      flash[:error] = "There was a problem"
      render :action => :new
    end
  end

  def update
    @user = User.find(params[:id])
    @user.attributes = params[:user]
    if @user.save
      flash[:notice] = "The user has been updated"
      redirect_to admin_users_path
    else
      flash[:error] = "There was a problem"
      render :action => :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end
end
