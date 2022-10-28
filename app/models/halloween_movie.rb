class HalloweenMovie < ApplicationRecord
  paginates_per 5

  validates :title, presence: true
  validates :image, presence: true
end
