class Garment < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :delete_all
  validates :title, presence: true

  has_many_attached :photos
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  has_one_attached :photo
  include PgSearch::Model
  pg_search_scope :search_by_title_and_location, against: [ :title, :location ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
  # pg_search_scope :global_search,
  #   against: [ :title, :location ],
  #   associated_against: {
  #     user: [ :name ]
  #   },
  #   using: {
  #     tsearch: { prefix: true }
  #   }
  # multisearchable against: [:title, :location]


end


