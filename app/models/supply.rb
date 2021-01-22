class Supply < ApplicationRecord
  belongs_to :machine
  belongs_to :braker

  validates :braker_id, presence: true, uniqueness: true
  validates :machine_id, presence: true, uniqueness: true
  validates :cable_size, presence: true

end
