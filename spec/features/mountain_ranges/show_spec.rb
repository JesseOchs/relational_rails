require 'rails_helper'

RSpec.describe 'mountain range show' do 

    before(:each) do 
        @rockies = MountainRange.create!(name:"Rocky Mountains", peak_count: 77, northern_hemisphere: true)
        @himalayas = MountainRange.create!(name: "Himalayas", peak_count: 110, northern_hemisphere: true)
        @andes = MountainRange.create!(name: "Andes", peak_count: 100, northern_hemisphere: false)  
    end

    scenario 'visitor sees mountain range attributes on show page' do 
        visit "/mountainranges/#{@rockies.id}"
        expect(page).to have_content(@rockies.name)
        expect(page).to have_content(@rockies.peak_count)
        expect(page).to have_content(@rockies.northern_hemisphere)
    end

    scenario 'visitor sees mountain range attributes on show page' do
        visit "/mountainranges/#{@himalayas.id}" 
        expect(page).to have_content(@himalayas.name)
        expect(page).to have_content(@himalayas.peak_count)
        expect(page).to have_content(@himalayas.northern_hemisphere)
    end

    scenario 'visitor sees mountain range attributes on show page' do
        visit "/mountainranges/#{@andes.id}" 
        expect(page).to have_content(@andes.name)
        expect(page).to have_content(@andes.peak_count)
        expect(page).to have_content(@andes.northern_hemisphere)
    end
end