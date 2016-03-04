class Card < ActiveRecord::Base
	validates :word, presence: true, uniqueness: true
	validates :definition, presence: true

	has_many :card_decks
	has_many :decks, through: :card_decks

	has_many :guesses
	has_many :rounds, through: :guesses
end
