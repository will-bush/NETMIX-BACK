Rails.application.routes.draw do
  resources :list_items
  resources :contents
  resources :listings
  resources :lists
  resources :users

  # post '/signup', to: 'users#signup'
  post '/signin', to: 'users#signin'
  get '/validate', to: 'users#validate'
  get '/lists', to: 'lists#show'
  # get '/find', to: 'users#find'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
