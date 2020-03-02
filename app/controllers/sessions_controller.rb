class SessionsController < ApplicationController
  before_action :redirect_log_user, except: :destroy
  def new; end

  def create
    @user = User.find_by_email(params[:session][:email])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to works_path
    else
      redirect_to login_path
      flash[:login_error] = 'Wrong email or password!'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
