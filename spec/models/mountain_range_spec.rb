require 'rails_helper'

RSpec.describe MountainRange, type: :model do
    describe 'relationship' do 
        it { should have_many(:mountains) }
    end

    it 'can count mountains' do 
        @rockies = MountainRange.create!(name:"Rocky Mountains", peak_count: 77, northern_hemisphere: true)
        @mount_evans = @rockies.mountains.create!(name: 'Mount Evans', height: 14265, fourteener: true)
        @pikes_peak = @rockies.mountains.create!(name: 'Pikes Peak', height: 14115, fourteener: true)
        @ypsilon = @rockies.mountains.create!(name: 'Ypsilon', height: 13520, fourteener: false)
        expect(@rockies.count_mountains).to eq(3)  
    end

end 