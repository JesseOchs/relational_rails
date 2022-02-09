class PlanetsController < ApplicationController
  def index
    @planets = Planet.desc_order
  end

  def show
    @planet = Planet.find(params[:id])
    @satellites = @planet.satellites.all
  end

  def new
  end

  def create

    planet = Planet.create({
      name: params[:name],
      relative_position: params[:relative_position],
      dwarf: params[:dwarf]
    })

    redirect_to '/planets'
  end

  def edit
    @current_planet = Planet.find(params[:id])
  end

  def update
    current_planet = Planet.find(params[:id])
    current_planet.update(planet_params)
    redirect_to "/planets/#{current_planet.id}"
  end

  private
  def planet_params
    params.permit(:name, :relative_position, :dwarf)
  end
end
