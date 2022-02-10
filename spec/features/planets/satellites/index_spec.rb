require 'rails_helper'

RSpec.describe 'Planet Satellites' do

  before(:each) do
    @planet = Planet.create!(name: "Kepler-22b", relative_position: 1, dwarf: false)
    @planet_two = Planet.create!(name: "Sioux 12", relative_position: 2, dwarf: true)

    @satellite = @planet.satellites.create(name: "2V", discovery_year: 2000, artificial: true)
    @satellite_two = @planet_two.satellites.create(name: "3L", discovery_year: 1998, artificial: false)
    @satellite_three = @planet.satellites.create(name: "3V", discovery_year: 1990, artificial: true)

  end

  it 'lists all respective satellites of a given planet' do
    visit "/planets/#{@planet.id}/satellites"

    expect(page).to have_content(@satellite.name)
    expect(page).to have_content(@satellite.discovery_year)
    expect(page).to have_content(@satellite.artificial)
    expect(page).to have_content(@satellite.updated_at)
    expect(page).to have_content(@satellite.created_at)

    expect(page).to have_content(@satellite_three.name)
    expect(page).to have_content(@satellite_three.discovery_year)
    expect(page).to have_content(@satellite_three.artificial)

    expect(page).to_not have_content(@satellite_two.name)
    expect(page).to_not have_content(@satellite_two.discovery_year)
    expect(page).to_not have_content(@satellite_two.artificial)
  end
  
end
