class PlanetSatellitesController < ApplicationController
  def index
    @planet = Planet.find(params[:id])
    @satellites = @planet.satellites.all
  end
end
