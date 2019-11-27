class Restaurant < ApplicationRecord
  CATEGORIES = ['chinese', 'italian', 'japanese', 'french', 'belgian']
  validates :name, presence: true, allow_blank: false
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
  has_many :reviews, dependent: :destroy
end
