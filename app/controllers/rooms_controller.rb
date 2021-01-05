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
			redirect_to room_path(id: @room.id)
		end
	end

	private

	def room_params
		params.require(:room).permit(:topic, :category_id)
	end
end
