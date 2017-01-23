class GamersController < ApplicationController

  def index
    @gamers = Gamer.all
  end

  def new
    @gamers = Gamer.new
  end

end
