class Bookmark < ApplicationRecord
  # Associations
  belongs_to :list
  belongs_to :movie
end
