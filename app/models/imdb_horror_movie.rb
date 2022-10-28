class ImdbHorrorMovie < ApplicationRecord
  paginates_per 20

  has_one :ReleaseDate

  validates :title, presence: true
  validates :rating, numericality: true
end
