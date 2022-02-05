require 'rails_helper'

RSpec.describe 'mountains index' do 
 
    it 'thing' do 
        rockies = MountainRange.create!(name:"Rocky Mountains", peak_count: 77, northern_hemisphere: true)
        mount_evans = rockies.mountains.create!(name: 'Mount Evans', height: 14265, fourteener: true)
        pikes_peak = rockies.mountains.create!(name: 'Pikes Peak', height: 14115, fourteener: true)
        ypsilon = rockies.mountains.create!(name: 'Ypsilon', height: 13520, fourteener: false)
   
        visit '/mountains/'
        expect(page).to have_content(mount_evans.name)
        expect(page).to have_content(mount_evans.height)
        expect(page).to have_content(mount_evans.fourteener)
    end
end