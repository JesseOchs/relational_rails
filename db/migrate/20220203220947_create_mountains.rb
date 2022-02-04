class CreateMountains < ActiveRecord::Migration[5.2]
  def change
    create_table :mountains do |t|
      t.string :name
      t.integer :height
      t.boolean :fourteener

      t.timestamps
    end
  end
end
