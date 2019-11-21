class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :garments
  has_many :bookings
  has_many :booked_garments, through: :bookings, source: :garment
  # validates :name, presence: true
  # validates :location, presence: true
  has_one_attached :avatar
  include PgSearch::Model
  multisearchable against: [:name]
end
