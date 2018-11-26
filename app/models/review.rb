class Review < ApplicationRecord
  belongs_to :booking
  validates :stars, presence: true, numericality: { only_integer: true }, inclusion: { in: [0, 1, 2, 3, 4, 5] }
  validates :content, presence: true, length: { minimum: 50 }
end
