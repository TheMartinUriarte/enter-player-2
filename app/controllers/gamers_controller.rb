class GamersController < ApplicationController

  def index
    @gamers = Gamer.all
  end

end
