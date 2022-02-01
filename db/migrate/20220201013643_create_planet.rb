class CreatePlanet < ActiveRecord::Migration[5.2]
  def change
    create_table :planets do |t|
      t.string :name
      t.integer :relative_position
      t.boolean :dwarf

      t.timestamps
    end
  end
end
