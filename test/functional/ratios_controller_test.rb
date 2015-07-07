require 'test_helper'

class RatiosControllerTest < ActionController::TestCase
  setup do
    @ratio = ratios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ratios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ratio" do
    assert_difference('Ratio.count') do
      post :create, ratio: { dividend: @ratio.dividend, earning_per_share: @ratio.earning_per_share, par_value: @ratio.par_value, price: @ratio.price, price_book_value: @ratio.price_book_value, ratio: @ratio.ratio, shares: @ratio.shares, stock_id: @ratio.stock_id, stock_name: @ratio.stock_name, yield: @ratio.yield }
    end

    assert_redirected_to ratio_path(assigns(:ratio))
  end

  test "should show ratio" do
    get :show, id: @ratio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ratio
    assert_response :success
  end

  test "should update ratio" do
    put :update, id: @ratio, ratio: { dividend: @ratio.dividend, earning_per_share: @ratio.earning_per_share, par_value: @ratio.par_value, price: @ratio.price, price_book_value: @ratio.price_book_value, ratio: @ratio.ratio, shares: @ratio.shares, stock_id: @ratio.stock_id, stock_name: @ratio.stock_name, yield: @ratio.yield }
    assert_redirected_to ratio_path(assigns(:ratio))
  end

  test "should destroy ratio" do
    assert_difference('Ratio.count', -1) do
      delete :destroy, id: @ratio
    end

    assert_redirected_to ratios_path
  end
end
