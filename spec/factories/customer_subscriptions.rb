FactoryBot.define do
  factory :customer_subscription do
    customer
    subscription
    status { 'active' }
  end
end
