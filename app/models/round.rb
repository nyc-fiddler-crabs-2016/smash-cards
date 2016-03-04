class Round < ActiveRecord::Base
  belongs_to :user
  belongs_to :deck

  has_many :guesses

  # validates :first_try_count, presence: true, numericality: true
  # validates :total_guesses, presence: true, numericality: true
end
