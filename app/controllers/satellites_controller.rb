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

  def edit
    @current_satellite = Satellite.find(params[:id])
  end

  def update
    current_satellite = Satellite.find(params[:id])
    current_satellite.update(satellite_params)

    redirect_to "/satellites/#{current_satellite.id}"
  end

  def destroy
    satellite = Satellite.find(params[:id])
    satellite.destroy
    redirect_to "/satellites"
  end

  private
  def satellite_params
    params.permit(:name, :discovery_year, :artificial)
  end
end
