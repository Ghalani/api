require 'test_helper'

class SubscriptionsControllerTest < ActionController::TestCase
  setup do
    @subscription = subscriptions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subscriptions)
  end

  test "should create subscription" do
    assert_difference('Subscription.count') do
      post :create, subscription: { email: @subscription.email }
    end

    assert_response 201
  end

  test "should show subscription" do
    get :show, id: @subscription
    assert_response :success
  end

  test "should update subscription" do
    put :update, id: @subscription, subscription: { email: @subscription.email }
    assert_response 204
  end

  test "should destroy subscription" do
    assert_difference('Subscription.count', -1) do
      delete :destroy, id: @subscription
    end

    assert_response 204
  end
end
