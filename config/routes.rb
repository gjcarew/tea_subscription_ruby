Rails.application.routes.draw do
  resources :tea_subscriptions
  resources :teas
  resources :customer_subscriptions
  resources :subscriptions
  resources :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
