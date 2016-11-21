require 'rails_helper'

RSpec.describe Team, type: :model do
  describe 'factory' do
    it 'exists' do
      expect { FactoryGirl.create :user }.not_to raise_error
    end

    it 'is valid' do
      expect(build :user).to be_valid
    end

  end

end
