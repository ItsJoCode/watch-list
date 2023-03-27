class Movie < ApplicationRecord
  # Associations
  has_many :bookmarks
  has_many :lists, through: :bookmarks

  # Validations
  validates :title, :overview, presence: true, uniqueness: true
  validates :poster_url, :rating, presence: true
end
