class Job < ApplicationRecord
  JOB_TYPES = [FULL_TIME = "full_time", PART_TIME = "part_time"]
  validates :job_title, :job_description, :company_name ,presence: true

  enum job_type: JOB_TYPES
end
