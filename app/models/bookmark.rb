class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie

  validates_presence_of :movie_id, :list_id
  validates :movie_id, uniqueness: { scope: :list_id, message: "Movie-List combination already exists" }
  validates :comment, length: { minimum: 6 }
end
