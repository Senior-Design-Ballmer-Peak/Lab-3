Rails.application.routes.draw do
  root 'home#index'

  get '/charlie/index', to: 'charlie#index', as: 'charlie_index'
  get '/trey/index', to: 'trey#index', as: 'trey_index'
  get '/tristan/index', to: 'tristan#index', as: 'tristan_index'
  get '/miles/index', to: 'miles#index', as: 'miles_index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/srouting.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :comments, only: [:create]

  # Defines the root path route ("/")
  # root "posts#index"
end
