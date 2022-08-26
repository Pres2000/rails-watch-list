class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length: 6..150, allow_blank: false
  validates :movie_id, uniqueness: { scope: :list_id, message: 'is already in the list' }
end
