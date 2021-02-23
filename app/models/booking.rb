class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :clinic

  validates :booking_time, presence: true
end
