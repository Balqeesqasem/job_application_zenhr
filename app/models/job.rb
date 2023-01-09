class Job < ApplicationRecord
  # Constant
  JOB_TYPES = [FULL_TIME = "full_time", PART_TIME = "part_time"]

  # Associations
  has_many :job_applications, dependent: :destroy

  # Validations
  validates :job_title, :job_description, :company_name ,presence: true

  # Enum
  enum job_type: JOB_TYPES

  # Filtering attributes
  concerning :Filtering do
    class_methods do
      def filterable_attributes
        ["job_title", "created_at"]
      end
    end
  end
end
