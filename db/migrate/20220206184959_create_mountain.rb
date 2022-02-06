class CreateMountain < ActiveRecord::Migration[5.2]
  def change
    create_table :mountains do |t|
      t.string :name
      t.integer :height
      t.boolean :fourteener
      t.references :mountain_range, foreign_key: true

      t.timestamps
    end
  end
end
