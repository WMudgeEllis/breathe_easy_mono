require "rails_helper"

RSpec.describe Location do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:state) }
    it { should validate_presence_of(:country) }
    it { should validate_presence_of(:lat) }
    it { should validate_presence_of(:lon) }
    it { should validate_presence_of(:current_aqi) }
  end

  describe 'Relationships' do
    it { should have_many(:user_locations) }
    it { should have_many(:users).through(:user_locations) }
  end
end
