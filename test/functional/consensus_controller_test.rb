require 'test_helper'

class ConsensusControllerTest < ActionController::TestCase
  setup do
    @consensu = consensus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:consensus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create consensu" do
    assert_difference('Consensu.count') do
      post :create, consensu: { PE: @consensu.PE, broker_id: @consensu.broker_id, last_published: @consensu.last_published, next_year_EPS: @consensu.next_year_EPS, next_year_profit: @consensu.next_year_profit, recommend: @consensu.recommend, research: @consensu.research, stock_id: @consensu.stock_id, target_price: @consensu.target_price, this_year_EPS: @consensu.this_year_EPS, this_year_profit: @consensu.this_year_profit, yield: @consensu.yield }
    end

    assert_redirected_to consensu_path(assigns(:consensu))
  end

  test "should show consensu" do
    get :show, id: @consensu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @consensu
    assert_response :success
  end

  test "should update consensu" do
    put :update, id: @consensu, consensu: { PE: @consensu.PE, broker_id: @consensu.broker_id, last_published: @consensu.last_published, next_year_EPS: @consensu.next_year_EPS, next_year_profit: @consensu.next_year_profit, recommend: @consensu.recommend, research: @consensu.research, stock_id: @consensu.stock_id, target_price: @consensu.target_price, this_year_EPS: @consensu.this_year_EPS, this_year_profit: @consensu.this_year_profit, yield: @consensu.yield }
    assert_redirected_to consensu_path(assigns(:consensu))
  end

  test "should destroy consensu" do
    assert_difference('Consensu.count', -1) do
      delete :destroy, id: @consensu
    end

    assert_redirected_to consensus_path
  end
end
