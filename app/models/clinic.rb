class Clinic < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_many :bookings

  validates :name, presence: true
  validates :location, presence: true
  validates :description, presence: true
end
