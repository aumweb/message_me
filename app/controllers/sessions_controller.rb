class SessionsController < ApplicationController

	before_action :login_redirect, only: [:new,:create]

	def new

	end

	def create
		user = User.find_by(username: params[:username].downcase)
		if user && user.authenticate(params[:password])
		  session[:user_id] = user.id
		  user.toggle!(:is_user_session_active)
		  flash[:success] = "Logged in successfully"
		  redirect_to root_path	
		else
		  flash.now[:error] = "There was something wrong with your login details"
		  render 'new'
		end
	end

	def destroy
	
		user = User.find(session[:user_id])
		user.toggle!(:is_user_session_active)
	  	session[:user_id] = nil
	  	flash[:notice] = "Logged out"
	  	redirect_to login_path
	end

	private
	def login_redirect

		if is_login?

			flash[:error] = "You are already loged in! if you wish to logout #{view_context.link_to('Logout', logout_path,method: :delete)}."
			redirect_to root_path
		end
		
	end
end