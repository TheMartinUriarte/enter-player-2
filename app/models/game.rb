class Game < ApplicationRecord
  has_many :game_gamers, dependent: :destroy
  has_many :gamers, through: :game_gamers
end
