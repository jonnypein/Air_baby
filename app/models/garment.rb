class Garment < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :title, presence: true
  has_many_attached :photos
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
