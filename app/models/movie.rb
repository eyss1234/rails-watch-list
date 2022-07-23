class Movie < ApplicationRecord
  has_many :bookmarks

  validates_presence_of :title, :overview
end
