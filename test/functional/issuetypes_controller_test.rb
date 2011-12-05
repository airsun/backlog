require 'test_helper'

class IssuetypesControllerTest < ActionController::TestCase
  setup do
    @issuetype = issuetypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:issuetypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create issuetype" do
    assert_difference('Issuetype.count') do
      post :create, issuetype: @issuetype.attributes
    end

    assert_redirected_to issuetype_path(assigns(:issuetype))
  end

  test "should show issuetype" do
    get :show, id: @issuetype.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @issuetype.to_param
    assert_response :success
  end

  test "should update issuetype" do
    put :update, id: @issuetype.to_param, issuetype: @issuetype.attributes
    assert_redirected_to issuetype_path(assigns(:issuetype))
  end

  test "should destroy issuetype" do
    assert_difference('Issuetype.count', -1) do
      delete :destroy, id: @issuetype.to_param
    end

    assert_redirected_to issuetypes_path
  end
end
