class ApplicationController < ActionController::Base
  helper_method :current_user
  protect_from_forgery with: :exception # fake request protection token

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def require_user
    redirect_to login_path unless current_user
  end

  def redirect_log_user
    redirect_to root_path if current_user
  end

  def require_editor
    redirect_to root_path unless current_user.editor?
  end

  def require_admin
    redirect_to root_path unless current_user.admin?
  end
end
