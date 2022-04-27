class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie

  # validates :name, uniqueness: { scope: :year,
  #   message: "should happen once per year" }
  validates :list_id, uniqueness: { scope: :movie_id }
  validates :comment, length: { minimum: 6 }
  validates :comment, length: { maximum: 40 }
end
