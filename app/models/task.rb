class Task < ApplicationRecord
  belongs_to :jobs

  validates :job_id, presence: true
end
