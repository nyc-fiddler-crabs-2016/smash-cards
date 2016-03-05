class Round < ActiveRecord::Base
  belongs_to :user
  belongs_to :deck

  has_many :guesses
  has_many :cards, through: :deck

  validates :first_try_count, presence: true, numericality: true
  validates :total_guesses, presence: true, numericality: true

  def rotate_deck
    self.cards.rotate
  end

  def game_over?
    self.cards.empty?
  end

  def first_guess_correct
    self.first_try_count += 1
  end

  def make_guess
    self.total_guesses += 1
  end

  def pick_card
    self.cards.first
  end

  def name
    self.deck.name
  end

  def first_try_percentage
    "#{self.first_try_count} / #{self.deck.cards.length}"
  end



end
