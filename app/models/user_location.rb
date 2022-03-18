class UserLocation < ApplicationRecord
  attribute :alert_enabled, default: false
  attribute :alert_threshold, default: 150
  belongs_to :user
  belongs_to :location

  validates :alert_threshold, presence: true
  validates :alert_enabled, presence: true
end
