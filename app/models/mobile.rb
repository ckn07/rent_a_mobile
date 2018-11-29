class Mobile < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings, dependent: :destroy
  validates :brand, presence: true
  validates :model, presence: true
  validates :daily_price, presence: true
  validates :photo, presence: true
  validates :address, presence: true
  mount_uploader :photo, PhotoUploader
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  include PgSearch
  pg_search_scope :search_mobiles,
    against: [:brand, :model, :address, :content],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
