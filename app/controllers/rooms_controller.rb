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
      render json: {errors: @room.errors.full_messages}, status: 422
    end
  end

  def show
    room_id = params[:id]
    @room = Room.find_by(id: room_id)
    render :show
  end

  def update
    room_id = params[:id]
    @room = Room.find_by(id: room_id)

    @room.name = params["name"] || @room.name
    @room.status = params["status"] || @room.status
    @room.bgimage = params["bgimage"] || @room.bgimage

    if @room.save
      render :show
    else
      render json: {errors: @room.errors.full_messages}, status: 422
    end

  end
  
end
