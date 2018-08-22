class Admin::UsersController < Admin::ApplicationController

  before_action :verify_logged_in
  def new
    @page_title = 'Add New User'
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = 'User created'
      redirect_to admin_users_path
    else
      render 'new'
    end 
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = 'User updated'
      redirect_to admin_users_path
    else
      render 'edit'
    end 
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = 'User removed'
    redirect_to admin_users_path
  end
  def index
    @page_title = 'Manage users'
    @department = Department.all
    @users = User.all
  end

  def show
  end
  def user_params
    params.require(:user).permit(:name, :email, :department_id, :phone, :position, :password)
  end
end
