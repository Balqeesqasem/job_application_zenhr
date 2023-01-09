class JobSerializer < ApplicationSerializer
  fields :job_title, :job_description, :expired_at
end