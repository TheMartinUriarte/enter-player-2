class Gamer < ApplicationRecord
  has_secure_password

  def self.confirm(params)
    @gamer = Gamer.find_by({email: params[:email]})
    @gamer ? @gamer.authenticate(params[:password_digest]) : false
  end
end
