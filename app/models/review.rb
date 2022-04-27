class Review < ApplicationRecord
  belongs_to :list
  validates :rating, presence: true
  validates :rating, length: { maximum: 5 }
  validates :comment, presence: true
end
