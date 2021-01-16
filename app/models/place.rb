class Place < ApplicationRecord
  has_many :box

  validates :place, presence: true
end
