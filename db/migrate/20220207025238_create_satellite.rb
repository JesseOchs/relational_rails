class CreateSatellite < ActiveRecord::Migration[5.2]
  def change
    create_table :satellites do |t|
      t.string :name
      t.integer :discovery_year
      t.boolean :artificial

      t.timestamps
    end
  end
end
