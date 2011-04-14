require 'test_helper'

class Clients::VideosControllerTest < ActionController::TestCase
  setup do
    @clients_video = clients_videos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clients_videos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clients_video" do
    assert_difference('Clients::Video.count') do
      post :create, :clients_video => @clients_video.attributes
    end

    assert_redirected_to clients_video_path(assigns(:clients_video))
  end

  test "should show clients_video" do
    get :show, :id => @clients_video.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @clients_video.to_param
    assert_response :success
  end

  test "should update clients_video" do
    put :update, :id => @clients_video.to_param, :clients_video => @clients_video.attributes
    assert_redirected_to clients_video_path(assigns(:clients_video))
  end

  test "should destroy clients_video" do
    assert_difference('Clients::Video.count', -1) do
      delete :destroy, :id => @clients_video.to_param
    end

    assert_redirected_to clients_videos_path
  end
end
