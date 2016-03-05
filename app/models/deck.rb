class Deck < ActiveRecord::Base
  validates :name, presence: true

  has_many :card_decks
  has_many :cards, through: :card_decks

  has_many :rounds

  def shuffle_deck
    self.cards.shuffle
  end

  def remove_card
    self.cards.delete(self.cards[0])
  end


end
