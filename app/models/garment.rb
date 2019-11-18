class Garment < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :title, presence: true
end
