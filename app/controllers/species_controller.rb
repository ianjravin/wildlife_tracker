class SpeciesController < ApplicationController
  def index
    @species = Species.all
    @specie = Species.new
    render('species/index.html.erb')
  end

  def show
    @specie = Species.find(params[:id])
    @sighting = Sighting.new
    render('species/show.html.erb')
  end

  def create
    @specie = Species.create(params[:species])
    if @specie.save
      render('species/success.html.erb')
    else
      @species = Species.all
      render('species/index.html.erb')
    end
  end

  def edit
    @specie = Species.find(params[:id])

    render('species/edit.html.erb')
  end

  def update
    @specie = Species.find(params[:id])
    if @specie.update(params[:species])
      render('species/success.html.erb')
    else
      render('species/edit.html.erb')
    end
  end

  def destroy
    @specie = Species.find(params[:id])
    @specie.destroy
    render('species/destroy.html.erb')
  end
end
