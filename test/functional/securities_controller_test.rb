require 'test_helper'

class SecuritiesControllerTest < ActionController::TestCase
  setup do
    @security = securities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:securities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create security" do
    assert_difference('Security.count') do
      post :create, :security => @security.attributes
    end

    assert_redirected_to security_path(assigns(:security))
  end

  test "should show security" do
    get :show, :id => @security.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @security.to_param
    assert_response :success
  end

  test "should update security" do
    put :update, :id => @security.to_param, :security => @security.attributes
    assert_redirected_to security_path(assigns(:security))
  end

  test "should destroy security" do
    assert_difference('Security.count', -1) do
      delete :destroy, :id => @security.to_param
    end

    assert_redirected_to securities_path
  end
end
