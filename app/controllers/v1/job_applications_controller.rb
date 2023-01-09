class V1::JobApplicationsController <  V1::ApplicationController
  before_action :authenticate_admin!, except: [:create]

  # /v1/jobs/:job_id/job_applications , method: post
  def create 
    job_application = current_user.job_applications.new(job_id: params[:job_id])
    if job_application.save 
      render json: JobApplicationSerializer.render(job_application, view: :with_job)
    else
      render json: {error: job_application.errors.full_messages}, status: :bad_request
    end
  end

  # /v1/job_applications , method: get
  def index 
    job_applications = JobApplication.all 
    render json: JobApplicationSerializer.render(job_applications)
  end

  # /v1/job_applications/:id , method: get
  def show 
    job_application = JobApplication.find params[:id] 
    job_application.update(status: JobApplication::SEEN)
    render json: JobApplicationSerializer.render(job_application)
  end
end
