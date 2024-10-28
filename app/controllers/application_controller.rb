class ApplicationController < ActionController::Base
  helper_method :current_admin, :logged_in?

  def current_admin
    @current_admin ||= Admin.find_by(id: session[:admin_id]) if session[:admin_id]
  end

  def logged_in?
    !!current_admin
  end

  def require_login
    unless logged_in?
      redirect_to login_path
    end
  end
end
