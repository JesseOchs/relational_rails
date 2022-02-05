require 'rails_helper'

RSpec.describe 'mountains' do 

    before(:each) do 
        @rockies = MountainRange.create!(name:"Rocky Mountains", peak_count: 77, northern_hemisphere: true)
        @himalayas = MountainRange.create!(name: "Himalayas", peak_count: 110, northern_hemisphere: true)
        @andes = MountainRange.create!(name: "Andes", peak_count: 100, northern_hemisphere: false)
        @mount_evans = @rockies.mountains.create!(name: 'Mount Evans', height: 14265, fourteener: true)
        @pikes_peak = @rockies.mountains.create!(name: 'Pikes Peak', height: 14115, fourteener: true)
        @ypsilon = @rockies.mountains.create!(name: 'Ypsilon', height: 13520, fourteener: false)
    end

    scenario 'visitor sees mountain range attributes on show page' do 
        visit "/mountains/#{@mount_evans.id}"
        expect(page).to have_content(@mount_evans.name)
        expect(page).to have_content(@mount_evans.height)
        expect(page).to have_content(@mount_evans.fourteener)
    end

    scenario 'visitor sees mountain range attributes on show page' do
        visit "/mountains/#{@pikes_peak.id}" 
        expect(page).to have_content(@pikes_peak.name)
        expect(page).to have_content(@pikes_peak.height)
        expect(page).to have_content(@pikes_peak.fourteener)
    end

    scenario 'visitor sees mountain range attributes on show page' do
        visit "/mountains/#{@ypsilon.id}" 
        expect(page).to have_content(@ypsilon.name)
        expect(page).to have_content(@ypsilon.height)
        expect(page).to have_content(@ypsilon.fourteener)
    end
end