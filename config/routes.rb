Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  root "cars#index"

resources :favourites, only: [:index]

  resources :cars, only: [:index, :show] do
    resources :reviews, only: [:new, :create, :index]
    resources :favourites, only: [:new, :create]
  end

  # Defines the root path route ("/")
  # root "posts#index"
end
