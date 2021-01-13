class Braker < ApplicationRecord
  belongs_to :box
  has_one :relation
  has_one :supply

  def is_available?
    relation.blank? && supply.blank?
  end



end
