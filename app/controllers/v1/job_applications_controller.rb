class V1::JobApplicationsController <  V1::ApplicationController
  before_action :authenticate_admin!, only: [:create]

  # /v1/jobs/:job_id/job_applications , method: post
  def create 
    job_application = current_user.job_applications.new(job_id: params[:job_id])
    if job_application.save 
      render json: JobApplicationSerializer.render(job_application, view: :with_job)
    else
      render json: {error: job_application.errors.full_messages}, status: :bad_request
    end
  end
end
