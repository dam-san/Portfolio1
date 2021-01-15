class Box < ApplicationRecord
  has_many :brakers
  has_one :relation
  
  def parent
    relation.braker.box
  end
end
