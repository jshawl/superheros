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

  def update
    @superhero = Superhero.find( params[:id] )
    if @superhero.update( superhero_params )
      redirect_to @superhero
    else
      render 'form'
    end
  end

  private
  def superhero_params
    params.require( :superhero ).permit( :name, :cape, :super_power ) 
  end

end