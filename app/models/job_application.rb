class JobApplication < ApplicationRecord
  STATUS = [NOT_SEEN = "not_seen", SEEN = "seen"]
  belongs_to :user
  belongs_to :job

  enum status: STATUS
end
