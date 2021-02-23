class Clinic < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_many :bookings
  has_one_attached :photo

  validates :name, presence: true
  validates :location, presence: true
  validates :description, presence: true
end
