FactoryBot.define do
  factory :subscription do
    title { Faker::Lorem.sentence }
    price { Faker::Number.decimal(l_digits: 2, r_digits: 2) }
    frequency { Faker::Number.number(digits: 2) }
  end
end
