class AddPlanetToSatellites < ActiveRecord::Migration[5.2]
  def change
    add_reference :satellites, :planet, foreign_key: true
  end
end
