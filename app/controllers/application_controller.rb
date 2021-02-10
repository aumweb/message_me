class ApplicationController < ActionController::Base
	helper_method :current_user, :is_login?

	def current_user
    	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  	end

  def is_login?
    !!current_user
  end

  def require_user
    if !is_login?
      flash[:alert] = "You must be logged in to perform that action"
      redirect_to login_path
    end
  end

end
