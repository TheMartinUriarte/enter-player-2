module SessionsHelper

  def login(gamer)
    session[:gamer_id] = gamer.id
    @current_gamer = gamer
  end

  def current_gamer
    @current_gamer ||= Gamer.find_by_id(session[:gamer_id])
  end

  def logout
    @current_gamer = session[:gamer_id] = nil
  end
  
end
