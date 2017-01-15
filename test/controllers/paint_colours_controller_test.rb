require 'test_helper'

class PaintColoursControllerTest < ActionController::TestCase
  setup do
    @paint_colour = paint_colours(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:paint_colours)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create paint_colour" do
    assert_difference('PaintColour.count') do
      post :create, paint_colour: { name: @paint_colour.name }
    end

    assert_redirected_to paint_colour_path(assigns(:paint_colour))
  end

  test "should show paint_colour" do
    get :show, id: @paint_colour
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @paint_colour
    assert_response :success
  end

  test "should update paint_colour" do
    patch :update, id: @paint_colour, paint_colour: { name: @paint_colour.name }
    assert_redirected_to paint_colour_path(assigns(:paint_colour))
  end

  test "should destroy paint_colour" do
    assert_difference('PaintColour.count', -1) do
      delete :destroy, id: @paint_colour
    end

    assert_redirected_to paint_colours_path
  end
end
