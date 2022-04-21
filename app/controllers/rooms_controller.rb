class RoomsController < ApplicationController

  def index
    @rooms = Room.all
    render :index 
  end

  def create
    @room = Room.create!(
      name: params["name"],
      bgimage: params["bgimage"],
    )

    if @room.save
      render :show
    else
      render json: {errors: @room.error.full_messages}, status: 422
    end
  end

  def show
    room_id = params[:id]
    @room = Room.find_by(id: room_id)
    render :show
  end

  def update
    
  end
  
end
