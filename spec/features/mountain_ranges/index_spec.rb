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

    scenario "visitor can click links to move around site" do

        visit "#mountainranges/#{@rockies.id}" do

            click_link('All Mountains')
            expect(page).to have_current_path('/mountains')
            
            click_link('All Mountain Ranges')
            expect(page).to have_current_path('/mountainranges')

            click_link('Mountains in Range')
            expect(page).to have_current_path("/mountainranges/#{@rockies.id}/mountains")
           
        end

        visit "#mountainranges/#{@andes.id}" do

            click_link('All Mountains')
            expect(page).to have_current_path('/mountains')
            
            click_link('All Mountain Ranges')
            expect(page).to have_current_path('/mountainranges')

            click_link('Mountains in Range')
            expect(page).to have_current_path("/mountainranges/#{@andes.id}/mountains")
           
        end

        visit "#mountainranges/#{@himalayas.id}" do

            click_link('All Mountains')
            expect(page).to have_current_path('/mountains')
            
            click_link('All Mountain Ranges')
            expect(page).to have_current_path('/mountainranges')

            click_link('Mountains in Range')
            expect(page).to have_current_path("/mountainranges/#{@himalayas.id}/mountains")
           
        end
    end

end