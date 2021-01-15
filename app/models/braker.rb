class Braker < ApplicationRecord
  belongs_to :box
  has_one :relation
  has_one :supply

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
