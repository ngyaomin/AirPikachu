class RoomController < ApplicationController
  def index
    @rooms = current_user.rooms
  end

  def new
  end

  def create
  end

  def listing
    set_room
  end

  def pricing
    set_room
  end

  def description
    set_room
  end

  def photo_upload
  end

  def amenities
  end

  def location
  end

  def update
  end

  private
    def set_room
      @room = Room.find(params[:id])
    end
end
