class Candy < ApplicationRecord
  has_one :Sugar

  paginates_per 10

  validates :name, presence: true
  validates :chocolate, numericality: { only_integer: true }
  validates :fruity, numericality: { only_integer: true }
  validates :caramel, numericality: { only_integer: true }
  validates :peanuty_almondy, numericality: { only_integer: true }
  validates :nougat, numericality: { only_integer: true }
  validates :crisped_rice_wafer, numericality: { only_integer: true }
  validates :hard, numericality: { only_integer: true }
  validates :bar, numericality: { only_integer: true }
end
