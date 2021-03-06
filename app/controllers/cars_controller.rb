class CarsController < ApplicationController
  before_action :set_car, only: [:show]
  def index
    @cars = Car.all
  end

  def show
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:cars).permit(:brand, :model, :description, :photo)
  end
end
