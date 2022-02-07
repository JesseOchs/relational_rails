require 'rails_helper'

RSpec.describe Planet do

  describe 'relationships' do
    #it {should belong_to :planet}
  end

  describe 'validations' do
    it {should validate_presence_of :name}
    it {should validate_presence_of :planet_id}
    it {should validate_presence_of :discovery_year}
    # it {should validate_presence_of :artificial} # Refer to planet_spec.rb
  end
end
