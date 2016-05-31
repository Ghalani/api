require 'test_helper'

class FarmersControllerTest < ActionController::TestCase
  setup do
    @farmer = farmers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:farmers)
  end

  test "should create farmer" do
    assert_difference('Farmer.count') do
      post :create, farmer: { farm_id: @farmer.farm_id, fname: @farmer.fname, lname: @farmer.lname, manager_id: @farmer.manager_id, phone: @farmer.phone }
    end

    assert_response 201
  end

  test "should show farmer" do
    get :show, id: @farmer
    assert_response :success
  end

  test "should update farmer" do
    put :update, id: @farmer, farmer: { farm_id: @farmer.farm_id, fname: @farmer.fname, lname: @farmer.lname, manager_id: @farmer.manager_id, phone: @farmer.phone }
    assert_response 204
  end

  test "should destroy farmer" do
    assert_difference('Farmer.count', -1) do
      delete :destroy, id: @farmer
    end

    assert_response 204
  end
end
