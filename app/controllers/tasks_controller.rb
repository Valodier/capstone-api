class TasksController < ApplicationController
  
  def index
    @tasks = Task.all
    render :index
  end

  def create
    @task = Task.create!(
      title: params["title"],
      description: params["description"],
      user_id: current_user.id,
      room_id: params["room_id"]
    )

    if @task.save
      render :show
    else
      render json: {errors: @task.errors.full_messages}, status: 422
    end
    
  end

  def show
    
  end

  def update
    
  end

end
