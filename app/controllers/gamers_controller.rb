class GamersController < ApplicationController

  def index
    @gamers = Gamer.all
  end

  def new
    @gamer = Gamer.new
  end

end
