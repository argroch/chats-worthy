class MessagesController < ApplicationController

  before_action :authenticate_user!

	def new
		@message = Message.new
	end

	def create
		@message = Message.create(msg_params)

		if @message.save
			ActionCable.server.broadcast "room_channel", content: @message.content, user: @message.user.handle, room: @message.room.id, timestamp: @message.created_at.localtime.strftime("%I:%M%p")
		end
	end

	private

	def msg_params
		params.require(:message).permit(:content, :user_id, :room_id)
	end
end
