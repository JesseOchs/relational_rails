require 'rails_helper'

RSpec.describe Mountain, type: :model do
    describe 'relationship' do 
        it { should belong_to(:mountain_range) }
    end

end 