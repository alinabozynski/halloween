class ImdbHorrorMovie < ApplicationRecord
  paginates_per 25

  has_one :ReleaseDate

  validates :title, presence: true
  validates :rating, numericality: true
end
