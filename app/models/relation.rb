class Relation < ApplicationRecord
  belongs_to :box
  belongs_to :braker

  validates :braker_id, presence: true, uniqueness: true
  validates :box_id, presence: true, uniqueness: true
  validates :cable_size, presence: true
end
