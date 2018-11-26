class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :mobile
  has_many :reviews
  validates :minDate, presence: true
  validates :maxDate, presence: true
  validates :total_price, presence: true
  validates :duration, presence: true
end
