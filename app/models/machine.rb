class Machine < ApplicationRecord
  has_one :supply

  validates :name, presence: true
  validates :place_id, presence: true
  validates :volt, presence: true
  validates :kw, presence: true
  validates :cos, presence: true

  def parent
    supply.braker.box
  end
end
