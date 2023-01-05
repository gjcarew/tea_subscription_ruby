
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

      response '404', 'Customer not found' do 
        let (:customer_id) { 4 }
        run_test! do |response|
          not_found = JSON.parse(response.body, symbolize_names: true)
          expect(not_found[:error]).to eq("Couldn't find Customer with 'id'=4")
        end
      end
    end
  end
end