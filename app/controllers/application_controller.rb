class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  helper_method :logged_in?, :current_user

  def current_user
    User.find_by(session_token: session[:session_token])
  end
  
  def logged_in?
    !!current_user
  end

  def login(user)
    session[:session_token] = user.reset_session_token!
  end

  def logout
    current_user.reset_session_token!
    session[:session_token] = nil
  end

  def require_sign_in!
    redirect_to new_session_url unless logged_in?
  end

end
