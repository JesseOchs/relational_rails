require 'rails_helper'

RSpec.describe 'mountain range show' do 

    before(:each) do 
        @rockies = MountainRange.create!(name:"Rocky Mountains", peak_count: 77, northern_hemisphere: true)
        @himalayas = MountainRange.create!(name: "Himalayas", peak_count: 110, northern_hemisphere: true)
        @andes = MountainRange.create!(name: "Andes", peak_count: 100, northern_hemisphere: false) 
        
        
        @mount_evans = @rockies.mountains.create!(name: 'Mount Evans', height: 14265, fourteener: true)
        @pikes_peak = @rockies.mountains.create!(name: 'Pikes Peak', height: 14115, fourteener: true)
        @ypsilon = @rockies.mountains.create!(name: 'Ypsilon', height: 13520, fourteener: false)
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


    scenario 'visitor sees count of mountains associated with the range' do
        visit "/mountainranges/#{@rockies.id}" 
        expect(page).to have_content("Mountains count: 3")
      end

      scenario "visitor can click link and go to mountain index" do
        visit "/mountainranges"
    
        click_link('All Mountains')
        expect(page).to have_current_path('/mountains')
      end

end