class Box < ApplicationRecord
  has_many :brakers, dependent: :destroy
  has_one :relation, dependent: :destroy
  belongs_to :place

  validates :name, presence: true
  validates :place_id, presence: true
  validates :kind, presence: true

  def parent
    relation.braker.box
  end
end
