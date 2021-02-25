class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :clinic

  validates :booking_time, presence: true
  enum status: { pending: 0, declined: 1, accepted: 2 }
end
