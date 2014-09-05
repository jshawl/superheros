class SuperherosController < ApplicationController
  def index
    @superheros = Superhero.all
  end
end