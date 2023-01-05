class TeaSubscription < ApplicationRecord
  belongs_to :tea
  belongs_to :customer
end
