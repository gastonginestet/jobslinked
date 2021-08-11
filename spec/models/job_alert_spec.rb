require 'rails_helper'

RSpec.describe JobAlert, :model do
  describe 'Factory' do
    it 'has a valid factory' do
      expect(build(:job_alert))
    end
  end

  describe 'Associations' do
    it { should belong_to(:user) }
  end

  describe 'Validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:description) }
  end
end
