class VehiclesController < ApplicationController

  before_action :set_vehicle, only: [:show, :edit, :update, :destroy]
  before_action :set_lists, only: [:new, :edit]

  def index
    #@vehicles = Vehicle.all
    @q = Vehicle.ransack(params[:q])
    @vehicles = @q.result(distinct: true)
    if params[:type] == "pre-order"
      @vehicles = @vehicles.select{ |v| v.pre_order_indicator }
    else
      @vehicles = @vehicles.select{ |v| !v.pre_order_indicator }
    end
    @prices = %w(50000 100000 150000)
  end

  def show
  end

  private
    def set_vehicle
      @vehicle = Vehicle.find(params[:id])
    end

    def vehicle_params
      params.require(:vehicle).permit(:make_id, :model_id, :plan_id, :interior_colour_id, :paint_colour_id, :mileage, :year, :fuel, :transmission, :price, :stock_number, :derivative, :prior_use, :vehicle_type, :drive, :paint_colour, :interior_colour, :displacement, :fuel_type, :transmission, :description, :full_service_history, :one_owner, :low_kilometers, :abs_brakes, :air_conditioning, :alarm, :alloy_wheels, :central_locking, :electric_windows, :immobilizer, :power_steering, :airbags, :radio, :cd, :mp3, :pre_order_indicator, :image)
    end

end
