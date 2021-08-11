require 'rails_helper'

RSpec.describe User, :model do
  describe 'Factory' do
    it 'has a valid factory' do
      expect(build(:user))
    end
  end

  describe 'Associations' do
    it { should have_many(:job_alerts) }
    it { should belong_to(:role) }
  end

  describe 'Validations' do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:username) }
  end
end
