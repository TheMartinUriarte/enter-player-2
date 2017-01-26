class SessionsController < ApplicationController

  def new
    @gamer = Gamer.new
  end

  def create
    @gamer = Gamer.confirm(gamer_params)
    if @gamer
      login(@gamer)
      flash[:notice] = "Successfully logged in."
      redirect_to @gamer
    else
      flash[:error] = "Incorrect email or password."
      redirect_to login_path
    end
  end

  def destroy
    logout
    flash[:notice] = "Succesfully logged out."
    redirect_to root_path
  end

  private

  def gamer_params
    params.require(:gamer).permit(:username, :first_name, :last_name, :email,
    :birthday, :password)
  end

end
