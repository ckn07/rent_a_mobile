class Mobile < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings, dependent: :destroy
  validates :brand, presence: true
  validates :model, presence: true
  validates :daily_price, presence: true
  validates :address, presence: true
  mount_uploader :photo, PhotoUploader
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
