class Admin::VehiclesController < Admin::BaseController
  before_action :set_vehicle, only: [:show, :edit, :update, :destroy]
  before_action :set_lists, only: [:new, :edit]

  def index
   @vehicles = Vehicle.all
    #@vehicles = Vehicle.includes(:photo_files).all
  end

  def show
  end

  def new
    @vehicle = Vehicle.new
  end

  def edit
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)

    respond_to do |format|
      if @vehicle.save
        format.html { redirect_to admin_vehicles_path, notice: 'Vehicle was successfully created.' }
        format.json { render :show, status: :created, location: @vehicle }
      else
        format.html { render :new }
        format.json { render json: @vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @vehicle.update(vehicle_params)
        format.html { redirect_to admin_vehicles_path, notice: 'Vehicle was successfully updated.' }
        format.json { render :show, status: :ok, location: @vehicle }
      else
        format.html { render :edit }
        format.json { render json: @vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @vehicle.destroy
    respond_to do |format|
      format.html { redirect_to admin_vehicles_url, notice: 'Vehicle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_vehicle
      @vehicle = Vehicle.find(params[:id])
    end

    def vehicle_params
      params.require(:vehicle).permit(
        :make_id, :model_id, :plan_id, :interior_colour_id, :paint_colour_id,
        :mileage, :year, :fuel, :transmission, :price, :stock_number,
        :derivative, :prior_use, :vehicle_type, :drive, :paint_colour,
        :interior_colour, :displacement, :fuel_type, :transmission,
        :description, :full_service_history, :one_owner, :low_kilometers,
        :abs_brakes, :air_conditioning, :alarm, :alloy_wheels, :central_locking,
        :electric_windows, :immobilizer, :power_steering, :airbags, :radio, :cd, :mp3,
        :photo1, :photo2, :photo3, :photo4
        )
    end

    def set_lists
      @makes = Make.all.order("name asc")
      @models = Model.all.order("name asc")
      @plans = Plan.all
      @interior_colours = InteriorColour.all.order("name asc")
      @paint_colours = PaintColour.all.order("name asc")
      @fuels = %w(Petrol Diesel)
      @vehicle_types = ["Sedan","Hatchback","4x4","Bakkie Club Cab","Bakkie Double Cab","Bakkie Single Cab","Convertible","Coupe","Crossover","Hybrid","Minibus/Kombie","MPV","Panel Van","Sports Car","Station Wagon","SUV","Vintage"]
      @drives = ["Front Wheel","Rear Wheel","Four Wheel Drive"]
      @transmissions = %w(Manual Automatic)
      @uses = %w(New Used Demo Leased)
    end
end
