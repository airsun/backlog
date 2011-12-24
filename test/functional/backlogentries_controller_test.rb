require 'test_helper'

class BacklogentriesControllerTest < ActionController::TestCase
  setup do
    @backlogentry = backlogentries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:backlogentries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create backlogentry" do
    assert_difference('Backlogentry.count') do
      post :create, backlogentry: @backlogentry.attributes
    end

    assert_redirected_to backlogentry_path(assigns(:backlogentry))
  end

  test "should show backlogentry" do
    get :show, id: @backlogentry.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @backlogentry.to_param
    assert_response :success
  end

  test "should update backlogentry" do
    put :update, id: @backlogentry.to_param, backlogentry: @backlogentry.attributes
    assert_redirected_to backlogentry_path(assigns(:backlogentry))
  end

  test "should destroy backlogentry" do
    assert_difference('Backlogentry.count', -1) do
      delete :destroy, id: @backlogentry.to_param
    end

    assert_redirected_to backlogentries_path
  end
end
