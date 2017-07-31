class RoomController < ApplicationController
  def index
    @rooms = current_user.rooms
  end

  def new
  end

  def create
  end

  def listing
    @room = Room.find(params[:id])
  end

  def pricing
  end

  def description
  end

  def photo_upload
  end

  def amenities
  end

  def location
  end

  def update
  end
end
