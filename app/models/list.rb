class List < ApplicationRecord
  # Associations
  belongs_to :user
  has_many :bookmarks
  has_many :movies, through: :bookmarks

  # Validations
  validates :name, presence: true
end
