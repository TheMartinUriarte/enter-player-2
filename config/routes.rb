Rails.application.routes.draw do
  root to: 'gamers#index'

  get '/gamers/new', to: 'gamers#new', as: 'new_gamer'
  post '/gamers', to: 'gamers#create'
end
