require 'rails_helper'

RSpec.describe 'Planets' do

  before(:each) do
    @planet = Planet.create!(name: "Kepler-22b", relative_position: 1, dwarf: false)
    @planet_two = Planet.create!(name: "Sioux 12", relative_position: 2, dwarf: true)

    visit "/planets"
  end

  it 'lists all planets' do
    expect(page).to have_content(@planet.name)
    expect(page).to have_content(@planet_two.name)
  end


  it 'lists all planets & link accordingly' do
    expect(page).to have_content(@planet.name)
    expect(page).to have_content(@planet_two.name)

    expect(page).to have_link("#{@planet.name}", :href => "/planets/#{@planet.id}")
    expect(page).to have_link("#{@planet_two.name}", :href => "/planets/#{@planet_two.id}")
  end

end
