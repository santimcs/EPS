require 'test_helper'

class EarningPerSharesControllerTest < ActionController::TestCase
  setup do
    @earning_per_share = earning_per_shares(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:earning_per_shares)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create earning_per_share" do
    assert_difference('EarningPerShare.count') do
      post :create, :earning_per_share => @earning_per_share.attributes
    end

    assert_redirected_to earning_per_share_path(assigns(:earning_per_share))
  end

  test "should show earning_per_share" do
    get :show, :id => @earning_per_share.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @earning_per_share.to_param
    assert_response :success
  end

  test "should update earning_per_share" do
    put :update, :id => @earning_per_share.to_param, :earning_per_share => @earning_per_share.attributes
    assert_redirected_to earning_per_share_path(assigns(:earning_per_share))
  end

  test "should destroy earning_per_share" do
    assert_difference('EarningPerShare.count', -1) do
      delete :destroy, :id => @earning_per_share.to_param
    end

    assert_redirected_to earning_per_shares_path
  end
end
