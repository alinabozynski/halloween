class ImdbHorrorMovie < ApplicationRecord
  has_one :ReleaseDate

  validates :title, presence: true
  validates :rating, numericality: true
end
