class CardDeck < ActiveRecord::Base
	validates :card_id, :deck_id, presence: true

  belongs_to :card
  belongs_to :deck
end
