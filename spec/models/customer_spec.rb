require 'rails_helper'

RSpec.describe Customer, type: :model do
  describe 'relationships' do
    it { should have_many(:subscriptions).through(:customer_subscriptions) }
  end

  describe 'validations' do
    it { should validate_presence_of(:address) }
    it { should validate_presence_of(:fname) }
    it { should validate_presence_of(:lname) }
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email).case_insensitive.on(:create) }
  end

  describe 'instance methods' do
  end

  describe 'class methods' do
  end
end
