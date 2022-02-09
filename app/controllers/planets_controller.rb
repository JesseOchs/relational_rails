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

    binding.pry
    planet = Planet.create({
      name: params[:planet_name],
      relative_position: params[:relative_position],
      dwarf: params[:is_dwarf]
    })

    redirect_to '/planets'
  end

  def edit
    @current_planet = Planet.find(params[:id])
  end

  def update
    current_planet = Planet.find(params[:id])
    current_planet.update(planet_params)

    redirect_to "/planets/#{planet.id}"
  end
end
