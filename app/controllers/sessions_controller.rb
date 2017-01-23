class SessionsController < ApplicationController

  def new
    @gamer = Gamer.new
  end
  
end
