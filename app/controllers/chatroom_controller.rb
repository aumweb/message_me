class ChatroomController < ApplicationController

	before_action :require_user
	
	def index
		@message = Message.new
		@messages = Message.display_limited_message
		@users = User.all
	end
end