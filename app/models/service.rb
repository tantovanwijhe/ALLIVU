class Service < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_many :bookings
  has_many_attached :photos

  CATEGORIES = ["Food & Drinks", "Healthcare", "Personal Services", "Rentals", "Trips", "Practical Matters"]

  validates :name, presence: true
  validates :category, inclusion: { in: CATEGORIES }, presence: true
  validates :price, :location, :description, presence: true
  validates :photos, presence: true
end
