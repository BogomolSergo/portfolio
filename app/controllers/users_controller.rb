class UsersController < ApplicationController
  before_action :redirect_log_user, only: %i[new create]
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to works_path
    else
      redirect_to signup_path
    end
  end

  def edit
    flash[:success] = 'Profile updated!'
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to user_path
    else
      redirect_to edit_user_path
    end
  end

  def destroy
    flash[:success] = 'User deleted!'
    User.find(params[:id]).destroy
    redirect_to admin_path
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
