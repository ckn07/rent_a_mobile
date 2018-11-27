class Mobile < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings, dependent: :destroy
  validates :brand, presence: true
  validates :model, presence: true
  validates :daily_price, presence: true
  validates :address, presence: true
  validates :postcode, presence: true
  validates :city, presence: true
  validates :mobile_location, presence: true
  mount_uploader :photo, PhotoUploader
end
