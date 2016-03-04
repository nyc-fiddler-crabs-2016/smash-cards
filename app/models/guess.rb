class Guess < ActiveRecord::Base

  validates :round, presence: true
  validates :first_try, presence: true
  validates :card, presence: true

  belongs_to :round
  belongs_to :card
end
