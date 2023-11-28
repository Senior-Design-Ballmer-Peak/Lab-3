Rails.application.routes.draw do
  get 'miles/index'
  get 'trey/index'
  get 'tristan/index'
  get 'charlie/index'
  get 'home/index'

  get '/miles/index', to: 'miles#index', as: 'miles_index'
  get '/trey/index', to: 'trey#index', as: 'trey_index'
  get '/tristan/index', to: 'tristan#index', as: 'tristan_index'
  get '/charlie/index', to: 'charlie#index', as: 'charlie_index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
