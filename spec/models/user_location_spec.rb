require "rails_helper"

RSpec.describe UserLocation do
  describe 'validations' do
    it { should validate_presence_of(:alert_enabled) }
    it { should validate_presence_of(:alert_threshold) }
  end
  describe 'Relationships' do
    it { should belong_to(:user) }
    it { should belong_to(:location) }
  end
end
