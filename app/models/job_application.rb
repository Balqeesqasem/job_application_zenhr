class JobApplication < ApplicationRecord
  STATUS = [PENDING = "pending", APPROVED = "approved", REJECTED = "rejected"]
  belongs_to :user
  belongs_to :job

  enum status: STATUS
end
