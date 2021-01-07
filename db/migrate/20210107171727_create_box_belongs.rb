class CreateBoxBelongs < ActiveRecord::Migration[5.2]
  def change
    create_table :box_belongs do |t|
      t.integer :braker_id
      t.integer :box_id
      t.integer :cableSize
      t.timestamps
    end
  end
end
