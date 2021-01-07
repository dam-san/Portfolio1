class CreateBrakers < ActiveRecord::Migration[5.2]
  def change
    create_table :brakers do |t|
      t.integer :box_id
      t.integer :size

      t.timestamps
    end
  end
end
