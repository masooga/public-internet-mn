require 'test_helper'

class AccesspointsControllerTest < ActionController::TestCase
  setup do
    @accesspoint = accesspoints(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accesspoints)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create accesspoint" do
    assert_difference('Accesspoint.count') do
      post :create, accesspoint: { city: @accesspoint.city, downloadspeed: @accesspoint.downloadspeed, passwordrequired: @accesspoint.passwordrequired, publicbuilding: @accesspoint.publicbuilding, publicworkstations: @accesspoint.publicworkstations, streetaddress: @accesspoint.streetaddress, uploadspeed: @accesspoint.uploadspeed, wirelessavailable: @accesspoint.wirelessavailable, zipcode: @accesspoint.zipcode }
    end

    assert_redirected_to accesspoint_path(assigns(:accesspoint))
  end

  test "should show accesspoint" do
    get :show, id: @accesspoint
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @accesspoint
    assert_response :success
  end

  test "should update accesspoint" do
    patch :update, id: @accesspoint, accesspoint: { city: @accesspoint.city, downloadspeed: @accesspoint.downloadspeed, passwordrequired: @accesspoint.passwordrequired, publicbuilding: @accesspoint.publicbuilding, publicworkstations: @accesspoint.publicworkstations, streetaddress: @accesspoint.streetaddress, uploadspeed: @accesspoint.uploadspeed, wirelessavailable: @accesspoint.wirelessavailable, zipcode: @accesspoint.zipcode }
    assert_redirected_to accesspoint_path(assigns(:accesspoint))
  end

  test "should destroy accesspoint" do
    assert_difference('Accesspoint.count', -1) do
      delete :destroy, id: @accesspoint
    end

    assert_redirected_to accesspoints_path
  end
end
