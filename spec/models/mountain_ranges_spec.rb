require 'rails_helper'

RSpec.describe MountainRange, type: :model do
    describe 'relationship' do 
        it { should have_many(:mountains) }
    end

    describe 'validations' do 
        it {  should validate_presence_of(:name) }
        it {  should validate_presence_of(:peak_count) }
        it {  should validate_presence_of(:northern_hemisphere) }
    end
end 