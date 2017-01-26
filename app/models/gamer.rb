class Gamer < ApplicationRecord
  has_many :game_gamers, dependent: :destroy
  has_many :games, through: :game_gamers

  has_secure_password

  def self.confirm(params)
    @gamer = Gamer.find_by({email: params[:email]})
     @gamer ? @gamer.authenticate(params[:password]) : false
  end
end
