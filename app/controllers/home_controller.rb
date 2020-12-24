class HomeController < ApplicationController

	before_action :authenticate_user!

  def index
  	@room = Room.new
  	@categories = Category.all
  	@rooms = Room.all
  end
end
