class Customer < ApplicationRecord
  has_many :customer_subscriptions
  has_many :subscriptions, through: :customer_subscriptions

  validates_presence_of :address, :fname, :lname, :email
  validates_uniqueness_of :email, { case_sensitive: false }
end
