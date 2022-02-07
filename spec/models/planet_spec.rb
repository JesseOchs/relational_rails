require 'rails_helper'

RSpec.describe Planet do

  describe 'relationships' do
    #it {should have_many :satellites}
  end

  describe 'validations' do
    it {should validate_presence_of(:name) }
    it {should validate_presence_of(:relative_position) }
    #it {should validate_presence_of(:dwarf) } # Don't know how to get this to work
  end
end
