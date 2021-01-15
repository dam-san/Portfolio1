class Machine < ApplicationRecord
  has_one :supply
  
  def parent
    supply.braker.box
  end
end
