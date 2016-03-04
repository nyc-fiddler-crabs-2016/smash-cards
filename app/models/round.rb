class Round < ActiveRecord::Base
  belongs_to :user
  belongs_to :deck

  has_many :guesses
  has_many :cards, through: :deck

  validates :first_try_count, presence: true, numericality: true
  validates :total_guesses, presence: true, numericality: true

  def pick_card
    self.cards.first
  end

  def rotate_deck
    self.deck.rotate
  end

  def game_over?
    self.deck.empty?
  end

  def first_guess_correct
    self.first_try_count += 1
  end

  def make_guess
    self.total_guesses += 1
  end
end
