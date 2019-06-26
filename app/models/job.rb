class Job < ApplicationRecord
  belongs_to :user
  has_many :tasks, :dependent => :destroy
  has_many :contacts, :dependent => :destroy

  validates :user_id, presence: true 
end
