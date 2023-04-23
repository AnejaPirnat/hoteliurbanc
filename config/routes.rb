Rails.application.routes.draw do
  resources :orders
  resources :services
  resources :activities_tables
  resources :activities
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "services#index"
  get '/orders', to: 'orders#index', as: 'orders_index'
  post '/createorder', to: 'orders#create'
  






end
