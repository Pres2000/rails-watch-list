class Movie < ApplicationRecord
  has_many :bookmarks

  validates :title, uniqueness: true
  validates :title, length: 1..199, allow_blank: false
  validates :overview, length: 1..250, allow_blank: false
end
