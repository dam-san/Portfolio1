class CreateBoxes < ActiveRecord::Migration[5.2]

  def change

    create_table :boxes do |t|
      t.string :name
      t.string :image_id
      t.string :company
      t.integer :place_id
      t.integer :kind, default: 0
      t.boolean :is_deleted, default: "false"
      t.timestamps
    end

    create_table :brakers do |t|
      t.integer :box_id
      t.string :company
      t.integer :size
      t.integer :volt
      t.timestamps
    end

    create_table :relations do |t|
      t.integer :braker_id
      t.integer :box_id
      t.string :company
      t.integer :cable_size
      t.timestamps
    end

    create_table :supplies do |t|
      t.integer :braker_id
      t.integer :machine_id
      t.string :company
      t.integer :cable_size
      t.timestamps
    end

    create_table :places do |t|
      t.string :place
      t.string :company
      t.timestamps
    end

    create_table :machines do |t|
      t.string :name
      t.string :image_id
      t.integer :place_id
      t.string :company
      t.integer :volt
      t.integer :prefecture
      t.float :kw
      t.float :cos
      t.boolean :is_deleted, default: "false"
  end

 end
end