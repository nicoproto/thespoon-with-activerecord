Rails.application.routes.draw do
  # Create Read Update Destroy
  # VERB path, to: 'controller#action'

  # Read all the restaurants
  get '/restaurants', to: 'restaurants#index'

  # Create a restaurant
  get '/restaurants/new', to: 'restaurants#new',  as: :new_restaurant
  post '/restaurants', to: 'restaurants#create'

  # Read one restaurant
  get '/restaurants/:id', to: 'restaurants#show', as: :restaurant

  # Update a restaurant
  get '/restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant
  patch '/restaurants/:id', to: 'restaurants#update'

  # Destroy a restaurant
  delete '/restaurants/:id', to: 'restaurants#destroy'

  # resources :restaurants
end
