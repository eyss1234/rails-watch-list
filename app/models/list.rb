class List < ApplicationRecord
  has_many :bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy

  validates_presence_of :name
  validates :name, uniqueness: true

  has_one_attached :photo

end
