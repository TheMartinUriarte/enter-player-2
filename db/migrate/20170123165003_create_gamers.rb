class CreateGamers < ActiveRecord::Migration[5.0]
  def change
    create_table :gamers do |t|
      t.string :username
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :birthday
      t.string :password_digest

      t.timestamps
    end
  end
end
