Rails.application.routes.draw do
  resources :activities_tables
  resources :cleaning_tables
  resources :orders
  resources :activities
  resources :cleanings
  resources :foods
  devise_for :users
  resources :services
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "services#index"



end
