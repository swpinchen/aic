class Clinic < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_many :bookings
  has_one_attached :photo

  validates :name, presence: true
  validates :location, presence: true
  validates :description, presence: true

  acts_as_taggable_on :languages

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  # Searchable
  include PgSearch::Model
  pg_search_scope :search_by_language_and_location,
    against: [ :language_list, :location ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

  def average_rating
    return nil unless reviews.any?
    # sum of all raitings / number of all reviews
    number_of_reviews = reviews.size
    sum_of_ratings = reviews.sum {|review| review.rating}
    (sum_of_ratings.to_f / number_of_reviews).round
  end
end
