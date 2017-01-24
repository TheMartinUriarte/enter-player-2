class CreateGamesGamers < ActiveRecord::Migration[5.0]
  def change
    create_table :games_gamers do |t|
      t.belongs_to :gamer, foreign_key: true
      t.belongs_to :games, foreign_key: true

      t.timestamps
    end
  end
end
