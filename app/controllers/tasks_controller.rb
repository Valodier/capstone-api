class TasksController < ApplicationController
  
  def index
    @tasks = Task.all
    render :index
  end

  def create
    @task = Task.create!(
      title: params["title"],
      description: params["description"],
      user_id: params["user_id"],
      room_id: params["room_id"]
    )

    if @task.save
      render :show
    else
      render json: {errors: @task.errors.full_messages}, status: 422
    end
    
  end

  def show
    task_id = params[:id]
    @task = Task.find_by(id: task_id)
    render :show
  end

  def update
    task_id = params[:id]
    @task = Task.find_by(id: task_id)

    @task.title = params["title"] || @task.title
    @task.description = params["description"] || @task.description
    @task.user_id = params["user_id"] || @task.user_id
    @task.room_id = params["room_id"] || @task.room_id
    @task.status = params["status"] || @task.status

    if @task.save
      render :show
    else
      render json: {errors: @task.errors.full_messages}, status: 422
    end
  end

end
