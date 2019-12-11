Rails.application.routes.draw do
  resources :list_follows
  resources :user_follows
  resources :list_items
  resources :contents
  resources :listings
  resources :lists
  resources :users

  # CUSTOM ROUTES
  post '/signin', to: 'users#signin'
  get '/validate', to: 'users#validate'
  get '/lists', to: 'lists#show'

end
