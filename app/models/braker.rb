class Braker < ApplicationRecord
  belongs_to :box
  has_one :relation, dependent: :destroy
  has_one :supply, dependent: :destroy

  validates :box_id, presence: true
  validates :size, presence: true
  validates :volt, presence: true

  def has_machine?
    supply.present?
  end

  def has_box?
    relation.present?
  end

  def machine_child
    supply.machine
  end

  def box_child
    relation.box
  end
end
