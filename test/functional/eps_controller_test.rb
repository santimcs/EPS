require 'test_helper'

class EpsControllerTest < ActionController::TestCase
  setup do
    @ep = eps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ep" do
    assert_difference('Eps.count') do
      post :create, :ep => @ep.attributes
    end

    assert_redirected_to ep_path(assigns(:ep))
  end

  test "should show ep" do
    get :show, :id => @ep.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @ep.to_param
    assert_response :success
  end

  test "should update ep" do
    put :update, :id => @ep.to_param, :ep => @ep.attributes
    assert_redirected_to ep_path(assigns(:ep))
  end

  test "should destroy ep" do
    assert_difference('Eps.count', -1) do
      delete :destroy, :id => @ep.to_param
    end

    assert_redirected_to eps_index_path
  end
end
