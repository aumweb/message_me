class UsersController < ApplicationController

	before_action :set_user, only: [:show,:edit,:update,:destroy]
	before_action :require_user
	
	def index
		@users = User.all
	end

	def show
		
	end

	def new
		@user = User.new
	end

	def edit
		
	end

	def create
	@user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:success] = "Welcome to the chatroom #{@user.username}, you have successfully signed up"
      redirect_to root_path
    else
      render 'new'
    end
	end

	def update
		
	end

	def destroy
		
	end


	private

	def user_params

		params.require(:user).permit(:username, :email, :password)
	end
	
	def set_user
		@user = User.find(params[:id])
	end

end