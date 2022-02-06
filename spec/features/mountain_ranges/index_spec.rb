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

    scenario 'visitor sees ranges in order with created at info' do 
        visit '/mountainranges/'

        within("#mountainranges-#{@rockies.id}") do 
            expect(page).to have_content(@rockies.name)
            expect(page).to have_content(@rockies.created_at)
        end

        within("#mountainranges-#{@himalayas.id}") do 
            expect(page).to have_content(@himalayas.name)
            expect(page).to have_content(@himalayas.created_at)
        end
        within("#mountainranges-#{@andes.id}") do 
            expect(page).to have_content(@andes.name)
            expect(page).to have_content(@andes.created_at)
        end
    end
end