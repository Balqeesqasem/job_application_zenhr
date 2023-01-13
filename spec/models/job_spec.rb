require 'rails_helper'

RSpec.describe Job, type: :model do
  context "Job model validation" do 

    it "Should create successfully" do 
      new_job = {job_title: "Test", job_description: "Testing"}
      job = Job.new(new_job).save
      job.should(be(true))
    end

    it "Must have job_title" do 
      new_job = {job_description: "Testing"}
      job = Job.new(new_job).save
      job.should(be(false))
    end

    it "Must have job_description" do 
      new_job = {job_title: "Test"}
      job = Job.new(new_job).save
      job.should(be(false))
    end
  end
end
