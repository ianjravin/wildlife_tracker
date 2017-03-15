class SightingsController < ApplicationController

  def create
    @sighting = Sighting.create(params[:sighting])

    if @sighting.save
      @specie = Species.new
      render('sightings/success.html.erb')
    else
      @species = Species.all
      render('species/show.html.erb')
    end
  end

  def edit
    @sighting = Sighting.find(params[:id])
    render('sightings/edit.html.erb')
  end

  def update
    @sighting = Sighting.find(params[:id])
    if @sighting.update(params[:sightings])
      render('sightings/success.html.erb')
    else
      render('sightings/edit.html.erb')
    end
  end
end
