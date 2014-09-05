class SuperherosController < ApplicationController

  def index
    @superheros = Superhero.all
  end

  def show
    @superhero = Superhero.find( params[:id] )
  end

  def edit
    @superhero = Superhero.find( params[:id] )
  end

end