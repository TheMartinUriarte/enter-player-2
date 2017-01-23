Rails.application.routes.draw do
  root to: 'gamers#index'

  get '/users/new', to: 'users#new', as: 'new_user'
end
