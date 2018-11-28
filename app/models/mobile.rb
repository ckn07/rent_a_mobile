class Mobile < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings, dependent: :destroy
  validates :brand, presence: true
  validates :model, presence: true
  validates :daily_price, presence: true
  validates :address, presence: true
  mount_uploader :photo, PhotoUploader
end
