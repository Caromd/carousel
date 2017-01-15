require 'test_helper'

class InteriorColoursControllerTest < ActionController::TestCase
  setup do
    @interior_colour = interior_colours(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:interior_colours)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create interior_colour" do
    assert_difference('InteriorColour.count') do
      post :create, interior_colour: { name: @interior_colour.name }
    end

    assert_redirected_to interior_colour_path(assigns(:interior_colour))
  end

  test "should show interior_colour" do
    get :show, id: @interior_colour
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @interior_colour
    assert_response :success
  end

  test "should update interior_colour" do
    patch :update, id: @interior_colour, interior_colour: { name: @interior_colour.name }
    assert_redirected_to interior_colour_path(assigns(:interior_colour))
  end

  test "should destroy interior_colour" do
    assert_difference('InteriorColour.count', -1) do
      delete :destroy, id: @interior_colour
    end

    assert_redirected_to interior_colours_path
  end
end
