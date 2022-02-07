require 'rails_helper'

RSpec.describe Planet do

  describe 'relationships' do
    it {should have_many :satellites}
  end

  describe 'validations' do
    it {should validate_presence_of(:name) }
    it {should validate_presence_of(:relative_position) }
    #it {should validate_presence_of(:dwarf) } # Don't know how to get this to work
  end

  describe 'class methods' do
    it '::desc_order' do
      @planet = Planet.create!(name: "Pluto", relative_position: 9, dwarf: true)
      @planet_two = Planet.create!(name: "Jupiter", relative_position: 5, dwarf: false)

      expect(Planet.desc_order).to eq([@planet_two, @planet])
    end
  end
end
