class CreateMountainRanges < ActiveRecord::Migration[5.2]
  def change
    create_table :mountain_ranges do |t|
      t.string :name
      t.integer :peak_count
      t.boolean :northern_hemisphere

      t.timestamps
    end
  end
end
