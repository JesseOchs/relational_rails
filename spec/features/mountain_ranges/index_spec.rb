require 'rails_helper'

RSpec.describe 'mountain ranges index' do 

    before(:each) do 
        @rockies = MountainRange.create!(name:"Rocky Mountains", peak_count: 77, northern_hemisphere: true)
        @himalayas = MountainRange.create!(name: "Himalayas", peak_count: 110, northern_hemisphere: true)
        @andes = MountainRange.create!(name: "Andes", peak_count: 100, northern_hemisphere: false)  
    end

    scenario 'visitor sees name of each mountain range name' do 
        visit '/mountainranges/'
        expect(page).to have_content(@rockies.name)
        expect(page).to have_content(@himalayas.name)
        expect(page).to have_content(@andes.name)
    end
end