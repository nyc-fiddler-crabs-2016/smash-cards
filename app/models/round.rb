class Round < ActiveRecord::Base
  belongs_to :user
  belongs_to :deck

  has_many :guesses
  has_many :cards, through: :deck

  validates :first_try_count, presence: true, numericality: true
  validates :total_guesses, presence: true, numericality: true

  def game_over?
    all_guesses_correct = self.guesses.all? {|guess| guess.guessed_correctly == true}
    guess_count_equals_card_count = self.guesses.count == self.deck.cards.count
    all_guesses_correct && guess_count_equals_card_count
  end

  def first_guess_correct
    self.first_try_count += 1
  end

  def make_guess
    self.total_guesses += 1
  end


  def shuffle_card
    self.cards.shuffle
  end

  def pick_card
    self.cards.each do |card|
     card_guesses = card.guesses.find_by(guessed_correctly: true, round_id: self.id)
     return card if card_guesses.nil?
    end
  end

  def name
    self.deck.name
  end

  def first_try_percentage
    "#{self.first_try_count} / #{self.deck.cards.length}"
  end

end
