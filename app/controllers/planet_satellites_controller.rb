class PlanetSatellitesController < ApplicationController
  def index
    @planet = Planet.find(params[:id])
    @satellites = @planet.satellites.all
  end

  def show
    @current_planet = Planet.find(params[:id])
    @satellite = Satellite.find(params[:satellite_id])
  end

  def new
    @current_planet = Planet.find(params[:id])
  end

  def edit
    @current_planet = Planet.find(params[:id])
    @current_satellite = Satellite.find(params[:satellite_id])

  end

  def update
    current_planet = Planet.find(params[:id])
    current_satellite = Satellite.find(params[:satellite_id])
    current_satellite.update(satellite_params)

    redirect_to "/planets/#{current_planet.id}/satellites/#{current_satellite.id}"
  end

  def create
    current_planet = Planet.find(params[:id])
    new_satellite = current_planet.satellites.create(name: params[:name], discovery_year: params[:discovery_year], artificial: params[:artificial])

    redirect_to "/planets/#{current_planet.id}/satellites"
  end

  private
  def satellite_params
    params.permit(:name, :discovery_year, :artificial)
  end
end
