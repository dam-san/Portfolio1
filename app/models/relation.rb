class Relation < ApplicationRecord
  belongs_to :box
  belongs_to :braker
  
  validates :braker_id, presence: true
  validates :box_id, presence: true
  validates :cable_size, presence: true
end
