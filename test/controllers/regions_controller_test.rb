require 'test_helper'

class RegionsControllerTest < ActionController::TestCase
  setup do
    @region = regions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:regions)
  end

  test "should create region" do
    assert_difference('Region.count') do
      post :create, region: { country_id: @region.country_id, name: @region.name, state: @region.state }
    end

    assert_response 201
  end

  test "should show region" do
    get :show, id: @region
    assert_response :success
  end

  test "should update region" do
    put :update, id: @region, region: { country_id: @region.country_id, name: @region.name, state: @region.state }
    assert_response 204
  end

  test "should destroy region" do
    assert_difference('Region.count', -1) do
      delete :destroy, id: @region
    end

    assert_response 204
  end
end
