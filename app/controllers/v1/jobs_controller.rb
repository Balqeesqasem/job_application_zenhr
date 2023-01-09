require "pry"
class V1::JobsController <  V1::ApplicationController
  before_action :authenticate_admin!, only: [:create]

  # /v1/jobs , method: post
  def create
    job = Job.new(job_params)
    if job.save
      render json: JobSerializer.render(job)
    else
      render json: {error: job.errors.full_messages}, status: :unauthorized
    end
  end

  def update
    job = Job.find params[:id]
    if job.update(job_params)
      render json: JobSerializer.render(job)
    else
      render json: {error: job.errors.full_messages}, status: :unauthorized
    end
  end

  # /v1/jobs , method: get
  def index
    jobs = Job.all
    render json: JobSerializer.render(jobs)
  end

  def job_params
    params.permit(:job_title, :job_type, :company_name, :job_description)
  end

end
