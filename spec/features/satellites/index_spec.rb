require 'rails_helper'

RSpec.describe 'Satellites' do

  before(:each) do
    @planet = Planet.create!(name: "Kepler-22b", relative_position: 1, dwarf: false)
    @planet_two = Planet.create!(name: "Sioux 12", relative_position: 2, dwarf: true)

    @satellite = @planet.satellites.create(name: "2V", discovery_year: 2000, artificial: true)
    @satellite_two = @planet_two.satellites.create(name: "3L", discovery_year: 1998, artificial: false)

    visit "/satellites"
  end

  it 'lists all satellites and info' do
    expect(page).to have_content(@satellite.name)
    expect(page).to have_content(@satellite.discovery_year)
    expect(page).to have_content(@satellite.artificial)
    expect(page).to have_content(@satellite.planet_id)


    expect(page).to have_content(@satellite_two.name)
    expect(page).to have_content(@satellite_two.discovery_year)
    expect(page).to have_content(@satellite_two.artificial)
    expect(page).to have_content(@satellite_two.planet_id)


    expect(page).to_not have_content(@planet.name)
    expect(page).to_not have_content(@planet_two.name)
  end

  it 'links to respective satellites' do
    expect(page).to have_link("#{@satellite.name}", :href => "/satellites/#{@satellite.id}")
    expect(page).to have_link("#{@satellite_two.name}", :href => "/satellites/#{@satellite_two.id}")
  end

end
