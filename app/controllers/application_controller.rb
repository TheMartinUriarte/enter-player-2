class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include SessionsHelper

  def current_gamer
    @current_gamer ||= Gamer.find(session[:gamer_id]) if session[:gamer_id]
  end

  def authorize
    if !current_gamer
      flash[:error] = "Must be logged in to view."
      redirect_to login_path
    end
  end
end
