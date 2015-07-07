require 'test_helper'

class OpinionsControllerTest < ActionController::TestCase
  setup do
    @opinion = opinions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:opinions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create opinion" do
    assert_difference('Opinion.count') do
      post :create, opinion: { PE: @opinion.PE, broker_id: @opinion.broker_id, last_published: @opinion.last_published, next_year_EPS: @opinion.next_year_EPS, next_year_profit: @opinion.next_year_profit, recommend: @opinion.recommend, research: @opinion.research, stock_id: @opinion.stock_id, target_price: @opinion.target_price, this_year_EPS: @opinion.this_year_EPS, this_year_profit: @opinion.this_year_profit, yield: @opinion.yield }
    end

    assert_redirected_to opinion_path(assigns(:opinion))
  end

  test "should show opinion" do
    get :show, id: @opinion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @opinion
    assert_response :success
  end

  test "should update opinion" do
    put :update, id: @opinion, opinion: { PE: @opinion.PE, broker_id: @opinion.broker_id, last_published: @opinion.last_published, next_year_EPS: @opinion.next_year_EPS, next_year_profit: @opinion.next_year_profit, recommend: @opinion.recommend, research: @opinion.research, stock_id: @opinion.stock_id, target_price: @opinion.target_price, this_year_EPS: @opinion.this_year_EPS, this_year_profit: @opinion.this_year_profit, yield: @opinion.yield }
    assert_redirected_to opinion_path(assigns(:opinion))
  end

  test "should destroy opinion" do
    assert_difference('Opinion.count', -1) do
      delete :destroy, id: @opinion
    end

    assert_redirected_to opinions_path
  end
end
