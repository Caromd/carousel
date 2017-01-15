require 'test_helper'

class VehiclesControllerTest < ActionController::TestCase
  setup do
    @vehicle = vehicles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vehicles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vehicle" do
    assert_difference('Vehicle.count') do
      post :create, vehicle: { abs_brakes: @vehicle.abs_brakes, air_conditioning: @vehicle.air_conditioning, airbags: @vehicle.airbags, alarm: @vehicle.alarm, alloy_wheels: @vehicle.alloy_wheels, cd: @vehicle.cd, central_locking: @vehicle.central_locking, derivative: @vehicle.derivative, description: @vehicle.description, displacement: @vehicle.displacement, drive: @vehicle.drive, electric_windows: @vehicle.electric_windows, fuel: @vehicle.fuel, fuel_type: @vehicle.fuel_type, full_service_history: @vehicle.full_service_history, immobilizer: @vehicle.immobilizer, interior_colour: @vehicle.interior_colour, interior_colour_id: @vehicle.interior_colour_id, low_kilometers: @vehicle.low_kilometers, make_id: @vehicle.make_id, mileage: @vehicle.mileage, model_id: @vehicle.model_id, mp3: @vehicle.mp3, one_owner: @vehicle.one_owner, paint_colour: @vehicle.paint_colour, paint_colour_id: @vehicle.paint_colour_id, plan_id: @vehicle.plan_id, power_steering: @vehicle.power_steering, price: @vehicle.price, prior_use: @vehicle.prior_use, radio: @vehicle.radio, stock_number: @vehicle.stock_number, transmission: @vehicle.transmission, transmission: @vehicle.transmission, vehicle_type: @vehicle.vehicle_type, year: @vehicle.year }
    end

    assert_redirected_to vehicle_path(assigns(:vehicle))
  end

  test "should show vehicle" do
    get :show, id: @vehicle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vehicle
    assert_response :success
  end

  test "should update vehicle" do
    patch :update, id: @vehicle, vehicle: { abs_brakes: @vehicle.abs_brakes, air_conditioning: @vehicle.air_conditioning, airbags: @vehicle.airbags, alarm: @vehicle.alarm, alloy_wheels: @vehicle.alloy_wheels, cd: @vehicle.cd, central_locking: @vehicle.central_locking, derivative: @vehicle.derivative, description: @vehicle.description, displacement: @vehicle.displacement, drive: @vehicle.drive, electric_windows: @vehicle.electric_windows, fuel: @vehicle.fuel, fuel_type: @vehicle.fuel_type, full_service_history: @vehicle.full_service_history, immobilizer: @vehicle.immobilizer, interior_colour: @vehicle.interior_colour, interior_colour_id: @vehicle.interior_colour_id, low_kilometers: @vehicle.low_kilometers, make_id: @vehicle.make_id, mileage: @vehicle.mileage, model_id: @vehicle.model_id, mp3: @vehicle.mp3, one_owner: @vehicle.one_owner, paint_colour: @vehicle.paint_colour, paint_colour_id: @vehicle.paint_colour_id, plan_id: @vehicle.plan_id, power_steering: @vehicle.power_steering, price: @vehicle.price, prior_use: @vehicle.prior_use, radio: @vehicle.radio, stock_number: @vehicle.stock_number, transmission: @vehicle.transmission, transmission: @vehicle.transmission, vehicle_type: @vehicle.vehicle_type, year: @vehicle.year }
    assert_redirected_to vehicle_path(assigns(:vehicle))
  end

  test "should destroy vehicle" do
    assert_difference('Vehicle.count', -1) do
      delete :destroy, id: @vehicle
    end

    assert_redirected_to vehicles_path
  end
end
