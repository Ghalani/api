require 'test_helper'

class DriversControllerTest < ActionController::TestCase
  setup do
    @driver = drivers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:drivers)
  end

  test "should create driver" do
    assert_difference('Driver.count') do
      post :create, driver: { country: @driver.country, fname: @driver.fname, lname: @driver.lname, phone: @driver.phone }
    end

    assert_response 201
  end

  test "should show driver" do
    get :show, id: @driver
    assert_response :success
  end

  test "should update driver" do
    put :update, id: @driver, driver: { country: @driver.country, fname: @driver.fname, lname: @driver.lname, phone: @driver.phone }
    assert_response 204
  end

  test "should destroy driver" do
    assert_difference('Driver.count', -1) do
      delete :destroy, id: @driver
    end

    assert_response 204
  end
end
