class Guess < ActiveRecord::Base

  validates :round, presence: true
  validates :card, presence: true
  validates :user_input, presence: true

  belongs_to :round
  belongs_to :card

  def correct?
    self.user_input == self.card.word
  end

end
