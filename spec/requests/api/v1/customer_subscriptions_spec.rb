
require 'swagger_helper'

RSpec.describe 'Customer subscription API', type: :request do

  path '/api/v1/customer_subscriptions' do 

    get "Gets a list of a customer's subscriptions" do 
      tags 'Customers'
      produces 'application/json'
      parameter name: :customer_id, in: :query, type: :integer, required: true

      response '200', 'Customer subscriptions found' do
        let (:customer) { create(:customer) }
        let (:customer_id) { customer.id }
        before { create_list(:customer_subscription, 3, customer: customer)}

        include_context 'with integration test'
      end
    end
  end
end