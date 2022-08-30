class UserReview < ApplicationRecord
  belongs_to :booking
  belongs_to :user
  # A UserReview is for a Provider reviewing a user

  validates :rating, presence: true, numericality: true, inclusion: { in: (1..5).to_a, message: "Please give a rating between 1 to 5" }
end
