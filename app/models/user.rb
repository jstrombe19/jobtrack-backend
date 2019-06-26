class User < ApplicationRecord
  has_secure_password

  validates :name, presence: true
  validates :password, presence: true, confirmation: true, length: { minimum: 6,
    too_short: "Your password must be at least six characters in length." }
  validates :password_confirmation, presence: true
  validates :email, presence: true, uniqueness: true

  has_many :jobs, :dependent => :destroy
  has_many :tasks, through: :jobs
  has_many :contacts, through: :jobs
  has_many :interactions, :dependent => :destroy
end
