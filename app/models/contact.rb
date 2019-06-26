class Contact < ApplicationRecord
  belongs_to :job
  has_many :interactions, :dependent => :destroy

  validates :name, presence: true
  validates :job_id, presence: true

end
