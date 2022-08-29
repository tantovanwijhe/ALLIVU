class Review < ApplicationRecord
  belongs_to :booking
  belongs_to :service
end
