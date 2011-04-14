require 'test_helper'

class Clients::UsersControllerTest < ActionController::TestCase
  setup do
    @clients_user = clients_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clients_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clients_user" do
    assert_difference('Clients::User.count') do
      post :create, :clients_user => @clients_user.attributes
    end

    assert_redirected_to clients_user_path(assigns(:clients_user))
  end

  test "should show clients_user" do
    get :show, :id => @clients_user.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @clients_user.to_param
    assert_response :success
  end

  test "should update clients_user" do
    put :update, :id => @clients_user.to_param, :clients_user => @clients_user.attributes
    assert_redirected_to clients_user_path(assigns(:clients_user))
  end

  test "should destroy clients_user" do
    assert_difference('Clients::User.count', -1) do
      delete :destroy, :id => @clients_user.to_param
    end

    assert_redirected_to clients_users_path
  end
end
