Rails.application.routes.draw do
  root to: 'users#index'
  get '/users/users', to: 'users#users'
  post '/users/users', to: 'users#users'

  resources :users
end
