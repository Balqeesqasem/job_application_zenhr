require 'rails_helper'

RSpec.describe JobApplication, type: :model do
  context "Job Application model validation" do 

    it "Should create successfully" do 
      new_user = {email: "balqees@gmail.com", password: "123456789"}
      user = User.create(new_user)
    
      new_job = {job_title: "Test", job_description: "Testing"}
      job = Job.create(new_job)

      job_request = user.job_applications.new(job_id: job.id).save
      job_request.should(be(true))
    end

    it "Must belong to user" do 
      new_job = {job_title: "Test", job_description: "Testing"}
      job = Job.create(new_job)

      job_request = JobApplication.new(job_id: job.id).save
      job_request.should(be(false))
    end

    it "Must send job" do 
      new_user = {email: "balqees@gmail.com", password: "123456789"}
      user = User.create(new_user)

      job_request = user.job_applications.new.save

      job_request.should(be(false))
    end
  end
end
