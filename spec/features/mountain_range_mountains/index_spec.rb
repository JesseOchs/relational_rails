require 'rails_helper'

RSpec.describe 'mountain range mountains index' do 

    before(:each) do 
        @rockies = MountainRange.create!(name:"Rocky Mountains", peak_count: 77, northern_hemisphere: true)
        @mount_evans = @rockies.mountains.create!(name: 'Mount Evans', height: 14265, fourteener: true)
        @pikes_peak = @rockies.mountains.create!(name: 'Pikes Peak', height: 14115, fourteener: true)
        @ypsilon = @rockies.mountains.create!(name: 'Ypsilon', height: 13520, fourteener: false)  
    end

    scenario 'visitor sees each mountain including attributes' do 
        visit "/mountainranges/#{@rockies.id}/mountains"
        within("#mountain-#{@mount_evans.id}") do
            expect(page).to have_content(@mount_evans.name)
            expect(page).to have_content(@mount_evans.height)
            expect(page).to have_content(@mount_evans.fourteener)
        end

        within("#mountain-#{@pikes_peak.id}") do
            expect(page).to have_content(@pikes_peak.name)
            expect(page).to have_content(@pikes_peak.height)
            expect(page).to have_content(@pikes_peak.fourteener)
        end

        within("#mountain-#{@ypsilon.id}") do
            expect(page).to have_content(@ypsilon.name)
            expect(page).to have_content(@ypsilon.height)
            expect(page).to have_content(@ypsilon.fourteener)
        end
    end
end