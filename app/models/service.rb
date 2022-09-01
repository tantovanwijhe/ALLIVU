class Service < ApplicationRecord
  geocoded_by :location
  belongs_to :user
  has_many :reviews
  has_many :bookings


  CATEGORIES = ["Food & Drinks", "Healthcare", "Personal Services", "Rentals", "Trips", "Practical Matters"]

  validates :name, presence: true
  validates :category, inclusion: { in: CATEGORIES }, presence: true
  validates :price, :location, :description, presence: true
  after_validation :geocode, if: :will_save_change_to_location?
  # validates :photos, presence: true
end
