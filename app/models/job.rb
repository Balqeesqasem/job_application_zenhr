class Job < ApplicationRecord
  # Associations
  has_many :job_applications, dependent: :destroy

  # Validations
  validates :job_title, :job_description ,presence: true

  # Filtering attributes
  concerning :Filtering do
    class_methods do
      def filterable_attributes
        ["job_title", "created_at"]
      end
    end
  end
end
