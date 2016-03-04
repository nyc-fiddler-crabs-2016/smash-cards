class User < ActiveRecord::Base
  has_many :rounds
  has_many :decks, through: :rounds
  validates :username, :password, presence:true
  validates :username, length: {maximum: 20}

  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password= Password.create(new_password)
    self.password_hash = @password
  end

end
