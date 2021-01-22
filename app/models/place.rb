class Place < ApplicationRecord
  has_many :box
  has_many :machine

  validates :place, presence: true


end
