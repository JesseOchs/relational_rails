class CreateMountains < ActiveRecord::Migration[5.2]
  def change
    create_table :mountains do |t|
      t.string :name
      t.integer :height
      t.boolean :fourteener


      t.timestamps
    end

    add_reference :mountains, :mountain_range, foreign_key: true

  end

end
