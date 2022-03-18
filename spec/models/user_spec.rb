require "rails_helper"

RSpec.describe User do
  describe 'Validations' do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password) }

  end
  describe 'Relationships' do
    it { should have_many(:user_locations) }
    it { should have_many(:locations).through(:user_locations) }
  end

end
