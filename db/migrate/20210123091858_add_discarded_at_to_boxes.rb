class AddDiscardedAtToBoxes < ActiveRecord::Migration[5.2]
  def change
    add_column :boxes, :discarded_at, :datetime
    add_index :boxes, :discarded_at
  end
end
