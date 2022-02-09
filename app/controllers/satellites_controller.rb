class SatellitesController < ApplicationController
  def index
    if params["order"] == "name"
      @satellites = Satellite.all.artificial.order(name: :asc)
    else
      @satellites = Satellite.all.artificial
    end
  end

  def show
    @satellite = Satellite.find(params[:id])
  end
end
