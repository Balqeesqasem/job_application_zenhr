class JobApplication < ApplicationRecord
  # Constant
  STATUS = [NOT_SEEN = "not_seen", SEEN = "seen"]

  # Associations
  belongs_to :user
  belongs_to :job

  #Enum 
  enum status: STATUS

  def update_status 
    self.update(status: SEEN)
  end
end
