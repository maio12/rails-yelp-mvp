class Review < ApplicationRecord
  RATINGS = (0..5).to_a
  validates :content, presence: true, allow_blank: false
  belongs_to :restaurant
  validates :rating, presence: true, allow_blank: false, inclusion: { in: RATINGS }, numericality: { only_integer: true }
end
