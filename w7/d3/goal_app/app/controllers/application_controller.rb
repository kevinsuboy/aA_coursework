class ApplicationController < ActionController::Base
  # ! CRLLL

  helper_method :current_user, :logged_in?

  def current_user
    return nil unless session[:session_token]
    @current_user ||= User.find_by(session_token: session[:session_token])
  end

  def require_user!
    redirect_to new_session_url if current_user.nil?
  end

  def logged_in?
    !!current_user
  end

  def login_user!(user)
    session[:session_token] = user.reset_session_token!
  end
  def logout_user!
    current_user.reset_session_token! if logged_in?
    session[:session_token] = nil
    @current_user = nil
  end

end
