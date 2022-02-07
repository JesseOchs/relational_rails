class SatellitesController < ApplicationController
  def index
    @satellites = Satellite.all
  end

  def show
    @satellite = Satellite.find(params[:id])
  end
end
