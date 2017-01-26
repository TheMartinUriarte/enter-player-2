class GamesGamersController < ApplicationController

  def index
    @gamer = Gamer.find(params[:gamer_id])
    @games = @gamer.games
  end

  def create
    @game = Game.find(params[:game_id])
    @game.gamer.push(current_gamer)

    redirect_to current_gamer
  end
end
