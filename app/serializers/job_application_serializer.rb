class JobApplicationSerializer < ApplicationSerializer
  fields :status
  
  view :with_job do
    association :job, blueprint: JobSerializer
  end
end