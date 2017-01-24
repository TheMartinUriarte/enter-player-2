Rails.application.routes.draw do
  root to: 'gamers#index'

  get '/gamers/new', to: 'gamers#new', as: 'new_gamer'
  post '/gamers', to: 'gamers#create'
  get '/gamers/:id', to: 'gamers#show', as: 'gamer'

  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
  post '/sessions', to: 'sessions#create'

  get '/games', to: 'games#index'
  get '/games/new', to: 'games#new', as: 'new_game'
  post '/games', to: 'games#create'
end
