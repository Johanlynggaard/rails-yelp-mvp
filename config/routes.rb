Rails.application.routes.draw do
  # # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # # Index restaurants
  # get '/restaurants', to: 'restaurants#index'
  # # Show restaurant
  # get '/restaurants/:id', to: 'restaurants#show', as: :restaurant
  # # Create restaurant
  # get '/restaurants/new', to: 'restaurants#new'
  # post '/restaurants/', to: 'restaurants#create'
  # # Add review to restaurant
  # get 'restaurants/'
  resources :restaurants, only: [:index, :new, :create, :show, :destroy] do
    resources :reviews, only:[:new, :create]
  end
  resources :reviews, only:[:destroy]
end
