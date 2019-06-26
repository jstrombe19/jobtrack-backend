class Api::V1::TasksController < ApplicationController
  before_action :get_all_tasks, only: [:index]
  before_action :find_this_task, only: [:show, :edit, :update, :destroy]

  def index
    render json: @tasks
  end

  def show
    render json: @task
  end

  def create
    @task = Task.new
    @task.name = params["name"]
    @task.description = params["description"]
    @task.due_date = params["due_date"]
    @task.job_id = params["job_id"]
    @task.save
  end

  def edit
    render json: @task
  end

  def update
  end

  def destroy
    @task = Task.find(params[:id])
    Task.destroy(@task)
    redirect_to :index
  end

  private

  def get_all_tasks
    @tasks = @current_user.tasks
  end

  def find_this_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:id, :name, :description, :due_date, :job_id, :user_id)
  end

end
