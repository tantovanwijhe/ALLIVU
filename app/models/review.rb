class Review < ApplicationRecord
  belongs_to :booking
  belongs_to :service
  # A review is for a User reviewing a provider service

  validates :rating, presence: true, numericality: true, inclusion: { in: (1..5).to_a, message: "Please give a rating between 1 to 5." }

end
