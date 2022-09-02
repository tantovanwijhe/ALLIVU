class Service < ApplicationRecord
  geocoded_by :location
  belongs_to :user

  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many_attached :photos

  CATEGORIES = [
    "Personal Assistant",
    "Vehicle Rentals",
    "Tours",
    "Private Classes",
    "Beauty",
    "Sports",
    "Health",
    "Souvenirs",
    "Romantic Services",
    "Home Entertainment"
  ]

  validates :name, presence: true
  validates :category, inclusion: { in: CATEGORIES }, presence: true
  validates :price, :location, :description, presence: true
  after_validation :geocode, if: :will_save_change_to_location?
  # validates :photos, presence: true
end
