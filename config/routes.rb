Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  resources :tea_subscriptions
  resources :teas
  resources :customer_subscriptions
  resources :subscriptions
  resources :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
