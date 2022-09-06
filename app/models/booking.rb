class Booking < ApplicationRecord
  belongs_to :service
  belongs_to :user
  has_one :review
  validates :start_date, :end_date, presence: true
end
