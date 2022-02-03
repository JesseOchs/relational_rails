require 'rails_helper'

RSpec.describe Mountain, type: :model do
    describe 'relationship' do 
        it { should belong_to(:mountainrange) }
    end
end 