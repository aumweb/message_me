class MessagesController < ApplicationController

	before_action :require_user

	def create
		messages = current_user.messages.build(message_params)
		if messages.save
			ActionCable.server.broadcast "chatroom_channel",foo: message_render(messages)
		end
	
	end

	private

	def message_params
		params.require(:message).permit(:body)
		
	end

	def message_render(message)

		render(partial:'message', locals: {message: message})
		
	end
end