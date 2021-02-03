class Place < ApplicationRecord
  has_many :box, dependent: :destroy
  has_many :machine, dependent: :destroy

  attachment :image

  validates :place, presence: true
end
