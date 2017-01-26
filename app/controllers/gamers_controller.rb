class GamersController < ApplicationController
  before_action :authorize, only: [:show]

  def index
    @gamers = Gamer.all
  end

  def new
    @gamer = Gamer.new
  end

  def create
    @gamer = Gamer.create(gamer_params)
    login(@gamer)
    redirect_to @gamer
  end

  def show
    @gamer = Gamer.find_by_id(params[:id])
    # render :show
  end

  private

  def gamer_params
    params.require(:gamer).permit(:username, :first_name, :last_name, :email,
    :birthday, :password_digest)
  end

end
