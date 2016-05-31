require 'test_helper'

class PickupsControllerTest < ActionController::TestCase
  setup do
    @pickup = pickups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pickups)
  end

  test "should create pickup" do
    assert_difference('Pickup.count') do
      post :create, pickup: { delivery_date_time: @pickup.delivery_date_time, end_coord: @pickup.end_coord, start_coord: @pickup.start_coord, start_date_time: @pickup.start_date_time }
    end

    assert_response 201
  end

  test "should show pickup" do
    get :show, id: @pickup
    assert_response :success
  end

  test "should update pickup" do
    put :update, id: @pickup, pickup: { delivery_date_time: @pickup.delivery_date_time, end_coord: @pickup.end_coord, start_coord: @pickup.start_coord, start_date_time: @pickup.start_date_time }
    assert_response 204
  end

  test "should destroy pickup" do
    assert_difference('Pickup.count', -1) do
      delete :destroy, id: @pickup
    end

    assert_response 204
  end
end
