require 'test_helper'

class BraidersControllerTest < ActionController::TestCase
  setup do
    @braider = braiders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:braiders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create braider" do
    assert_difference('Braider.count') do
      post :create, braider: { carrier_diameter: @braider.carrier_diameter, carrier_speed: @braider.carrier_speed, name: @braider.name, number_of_carriers: @braider.number_of_carriers }
    end

    assert_redirected_to braider_path(assigns(:braider))
  end

  test "should show braider" do
    get :show, id: @braider
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @braider
    assert_response :success
  end

  test "should update braider" do
    patch :update, id: @braider, braider: { carrier_diameter: @braider.carrier_diameter, carrier_speed: @braider.carrier_speed, name: @braider.name, number_of_carriers: @braider.number_of_carriers }
    assert_redirected_to braider_path(assigns(:braider))
  end

  test "should destroy braider" do
    assert_difference('Braider.count', -1) do
      delete :destroy, id: @braider
    end

    assert_redirected_to braiders_path
  end
end
