require 'test_helper'

class ManagersControllerTest < ActionController::TestCase
  setup do
    @manager = managers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:managers)
  end

  test "should create manager" do
    assert_difference('Manager.count') do
      post :create, manager: { region: @manager.region }
    end

    assert_response 201
  end

  test "should show manager" do
    get :show, id: @manager
    assert_response :success
  end

  test "should update manager" do
    put :update, id: @manager, manager: { region: @manager.region }
    assert_response 204
  end

  test "should destroy manager" do
    assert_difference('Manager.count', -1) do
      delete :destroy, id: @manager
    end

    assert_response 204
  end
end
