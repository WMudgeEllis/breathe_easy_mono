class User < ApplicationRecord
  has_many :user_locations
  has_many :locations, through: :user_locations

  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, presence: true

  has_secure_password
end
