Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  namespace :api do 
    namespace :v1 do 
      resources :customer_subscriptions, only: %i[create update index]
    end
  end
end
