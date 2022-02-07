class SatellitesController < ApplicationController
  def index
    #binding.pry
    @satellites = Satellite.all
  end
end
