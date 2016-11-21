require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'factory' do
    it 'exists' do
      expect { FactoryGirl.create :user }.not_to raise_error
    end

    it 'is valid' do
      expect(build :user).to be_valid
    end

    it 'has the attributes' do
      expect(attributes_for(:user)).to include(:name,:user_email)
    end
  end

end
