class CreateBoxes < ActiveRecord::Migration[5.2]
  def change
    create_table :boxes do |t|
      t.string :name
      t.string :image_id
      t.float :kw
      t.float :cos
      t.boolean :is_authorized, default: "false"
      t.timestamps
    end
  end
end