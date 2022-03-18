class Location < ApplicationRecord
  has_many :user_locations
  has_many :users, through: :user_locations

  validates :name, :lat, :lon, :country, :current_aqi, :state, presence: true
  validates :lat, :lon, :current_aqi, numericality: true
end
