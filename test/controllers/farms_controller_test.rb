require 'test_helper'

class FarmsControllerTest < ActionController::TestCase
  setup do
    @farm = farms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:farms)
  end

  test "should create farm" do
    assert_difference('Farm.count') do
      post :create, farm: { area: @farm.area, coord: @farm.coord, name: @farm.name, region_id: @farm.region_id }
    end

    assert_response 201
  end

  test "should show farm" do
    get :show, id: @farm
    assert_response :success
  end

  test "should update farm" do
    put :update, id: @farm, farm: { area: @farm.area, coord: @farm.coord, name: @farm.name, region_id: @farm.region_id }
    assert_response 204
  end

  test "should destroy farm" do
    assert_difference('Farm.count', -1) do
      delete :destroy, id: @farm
    end

    assert_response 204
  end
end
