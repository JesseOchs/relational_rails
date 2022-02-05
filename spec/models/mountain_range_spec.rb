require 'rails_helper'

RSpec.describe MountainRange, type: :model do
    describe 'relationship' do 
        it { should have_many(:mountains) }
    end

end 