require 'rails_helper'

RSpec.describe 'Planets#show' do

  before(:each) do
    @planet = Planet.create!(name: "Kepler-22b", relative_position: 1, dwarf: false)
    @planet_two = Planet.create!(name: "Sioux 12", relative_position: 2, dwarf: true)

    visit "/planets"
  end

  it 'contains respective planet info' do
    click_link(@planet.name)

    expect(current_path).to eq("/planets/#{@planet.id}")

    expect(page).to have_content(@planet.name)
    expect(page).to have_content(@planet.relative_position)
    expect(page).to have_content(@planet.dwarf)

    expect(page).to_not have_content(@planet_two.name)
    expect(page).to_not have_content(@planet_two.dwarf)

  end

end
