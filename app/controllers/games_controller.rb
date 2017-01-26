class GamesController < ApplicationController

  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.create(games_params)
    redirect_to games_path
  end

  def show
    @game = Game.find_by_id(params[:id])
  end

  private

  def games_params
    params.require(:game).permit(:title, :genre, :rating, :platform)
  end
end
