class VehiculesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @vehicules = Vehicule.all
  end

  def show
    @vehicule = Vehicule.find(params[:id])
  end
  def new
    @vehicule = Vehicule.new
  end

  def create
    @vehicule = Vehicule.new(vehicule_params)
    @vehicule.user = current_user
    if @vehicule.save
      redirect_to vehicules_path
    else
      # preserve input values
      render :new, status: :unprocessable_entity, locals: { vehicule: @vehicule }
    end
  end

  private

  def vehicule_params
    params.require(:vehicule).permit(:address, :category, :brand, :model, :energy, :capacity, :color, :year, :license_plate, :price_per_h, :price_per_d, :description)
  end
end
