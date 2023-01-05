class Api::V1::CustomerSubscriptionsController < ApplicationController
  def index
    customer = Customer.find(params[:customer_id])
    render json: SubscriptionSerializer.new(customer.subscriptions)
  end

  def create
    customer = Customer.find(params[:customer_id])
    subscription = Subscription.find(params[:subscription_id])
    new_sub = CustomerSubscription.create!(customer_id: customer.id, 
                                           subscription_id: subscription.id,
                                           status: 'active')
    render json: CustomerSubscriptionSerializer.new(new_sub), status: :created
  end

  def update

  end
end
