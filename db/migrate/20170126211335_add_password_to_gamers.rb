class AddPasswordToGamers < ActiveRecord::Migration[5.0]
  def change
    add_column :gamers, :password, :string
  end
end
