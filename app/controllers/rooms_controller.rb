class RoomsController < ApplicationController
	before_action :authenticate_user!

	def new
		@room = Room.new
		@categories = Category.all
	end

	def show
		@room = Room.find(params[:id])
		@message = Message.new
	end

	def create
		@room = Room.create(room_params)
		if @room.save
			ActionCable.server.broadcast "room_channel", id: @room.id, topic: @room.topic, icon: @room.category.icon
		end
	end

	private

	def room_params
		params.require(:room).permit(:topic, :category_id)
	end
end
