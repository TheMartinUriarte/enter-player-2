Rails.application.routes.draw do
  root to: 'gamers#index' #Clear

  get '/gamers/new', to: 'gamers#new', as: 'new_gamer' #Clear
  post '/gamers', to: 'gamers#create' #Clear
  get '/gamers/:id', to: 'gamers#show', as: 'gamer' #Clear
  get '/gamers/:gamer_id/games', to: 'games_gamers#index', as: 'gamer_games'
  #ERROR ^

  get '/login', to: 'sessions#new' #Maybe?
  get '/logout', to: 'sessions#destroy' #Clear
  post '/sessions', to: 'sessions#create' #ERROR

  get '/games', to: 'games#index', as: 'games' #Clear
  get '/games/new', to: 'games#new', as: 'new_game'#Maybe?
  post '/games', to: 'games#create' #Maybe?
  get '/games/:id', to: 'games#show', as: 'game'#Maybe?
  post '/games/:game_id/gamers', to: 'games_gamers#create', as: 'game_gamers'
  #ERROR ^
end
