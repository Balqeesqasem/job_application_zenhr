class V1::JobsController <  V1::ApplicationController
  before_action :authenticate_admin!, except: [:index]
  before_action :set_job, only: [:update, :destroy]

  # /v1/jobs , method: post
  def create
    job = Job.new(job_params)
    if job.save
      render json: JobSerializer.render(job)
    else
      render json: {error: job.errors.full_messages}, status: :bad_request
    end
  end

  # /v1/jobs/:id , method: put
  def update
    if @job.update(job_params)
      render json: JobSerializer.render(@job)
    else
      render json: {error: @job.errors.full_messages}, status: :bad_request
    end
  end

  # /v1/jobs/:id , method: delete
  def destroy
    if @job.destroy
      head :ok
    else
      render_error(@job.errors)
    end
  end


  # /v1/jobs , method: get
  def index
    jobs = Job.all
    jobs = jobs.filter_records(job_filters) if job_filters.present?
    render json: JobSerializer.render(jobs)
  end


  private

  def set_job
    @job = Job.find params[:id]
  end

  def job_params
    params.permit(:job_title, :job_type, :company_name, :job_description)
  end

  def job_filters
    params.permit(:created_at, :job_title)
  end 

end
