Rails.application.routes.draw do
  resources :services
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "services#index"
  get '/register', to: 'users#new', as: 'new_user_registration'
  post '/register', to: 'users#create', as: 'user_registration'

end
