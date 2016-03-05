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
    #if the card has not been
    #answered or has not been answered correctly


    # Pick the first card out of all the cards where
    # the card guess is not guessed correctly

    #w'ell need all the cards withgin the deck
    self.cards.each do |card|
     @x = card.guesses.find_by(guessed_correctly: true, round_id: self.id)
     binding.pry
     return card if @x.nil?
    end
  end

end
