class Api::V1::JobsController < ApplicationController
  before_action :get_all_jobs, only: [:index]
  before_action :find_this_job, only: [:show, :edit, :update, :destroy]

  def index
    render json: @jobs
  end

  def show
    render json: @job
  end

  def create
    @job = Job.new
    @job.title = params["title"]
    @job.description = params["description"]
    @job.salary = params["salary"]
    @job.company = params["company"]
    @job.position = params["position"]
    @job.qualifications = params["qualifications"]
    @job.logo = params["logo"]
    @job.stage = params["stage"]
    @job.position_type = params["position_type"]
    @job.job_posting_url = params["job_posting_url"]
    @job.company_url = params["company_url"]
    @job.user_id = params["user_id"]
    @job.save
  end

  def edit
    render json: @job
  end

  def update
  end

  def destroy
    @job = Job.find(params[:id])
    Job.destroy(@job.id)
  end

  private

  def get_all_jobs
    @jobs = @current_user.jobs
  end

  def find_this_job
    @job = Job.find(params[:id])
  end

  def job_params
    params.require(:job).permit(:id, :title, :description, :salary, :company, :position, :qualifications, :logo, :stage, :type, :url, :company_url, :user_id)
  end

end
