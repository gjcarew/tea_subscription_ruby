require 'rails_helper'

RSpec.describe Tea, type: :model do
  describe 'relationships' do
    it { should have_many(:subscriptions).through(:tea_subscriptions) }
  end

  describe 'validations' do
    it { should validate_presence_of(:title) }
  end
end
