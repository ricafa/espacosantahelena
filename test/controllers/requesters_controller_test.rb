require 'test_helper'

class RequestersControllerTest < ActionController::TestCase
  setup do
    @requester = requesters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:requesters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create requester" do
    assert_difference('Requester.count') do
      post :create, requester: { accept_terms: @requester.accept_terms, email: @requester.email, finish_at: @requester.finish_at, goal_id: @requester.goal_id, name: @requester.name, phone: @requester.phone }
    end

    assert_redirected_to requester_path(assigns(:requester))
  end

  test "should show requester" do
    get :show, id: @requester
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @requester
    assert_response :success
  end

  test "should update requester" do
    patch :update, id: @requester, requester: { accept_terms: @requester.accept_terms, email: @requester.email, finish_at: @requester.finish_at, goal_id: @requester.goal_id, name: @requester.name, phone: @requester.phone }
    assert_redirected_to requester_path(assigns(:requester))
  end

  test "should destroy requester" do
    assert_difference('Requester.count', -1) do
      delete :destroy, id: @requester
    end

    assert_redirected_to requesters_path
  end
end
