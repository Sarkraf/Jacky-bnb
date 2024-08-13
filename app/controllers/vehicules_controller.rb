class VehiculesController < ApplicationController

  def index
    @vehicules = Vehicule.all
  end
end
