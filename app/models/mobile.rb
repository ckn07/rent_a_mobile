class Mobile < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings, dependent: :destroy
  validates :address, presence: true
  validates :postcode, presence: true
  validates :city, presence: true
  validates :country, presence: true
  validates :brand, presence: true
  validates :model, presence: true
  validates :daily_price, presence: true
  mount_uploader :photo, PhotoUploader
end
