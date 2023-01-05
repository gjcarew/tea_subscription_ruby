FactoryBot.define do
  factory :customer do
    fname { Faker::Name.first_name }
    lname { Faker::Name.last_name }
    email { Faker::Internet.email }
    address { Faker::Address.full_address }
  end
end
