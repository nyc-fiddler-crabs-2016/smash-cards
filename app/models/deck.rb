class Deck < ActiveRecord::Base
  validates :name, presence: true

  has_many :card_decks
  has_many :cards, through: :card_decks

  has_many :rounds
end
