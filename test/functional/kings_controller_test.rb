require 'test_helper'

class KingsControllerTest < ActionController::TestCase
  setup do
    @king = kings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create king" do
    assert_difference('King.count') do
      post :create, :king => @king.attributes
    end

    assert_redirected_to king_path(assigns(:king))
  end

  test "should show king" do
    get :show, :id => @king.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @king.to_param
    assert_response :success
  end

  test "should update king" do
    put :update, :id => @king.to_param, :king => @king.attributes
    assert_redirected_to king_path(assigns(:king))
  end

  test "should destroy king" do
    assert_difference('King.count', -1) do
      delete :destroy, :id => @king.to_param
    end

    assert_redirected_to kings_path
  end
end
