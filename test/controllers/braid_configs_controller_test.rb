require 'test_helper'

class BraidConfigsControllerTest < ActionController::TestCase
  setup do
    @braid_config = braid_configs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:braid_configs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create braid_config" do
    assert_difference('BraidConfig.count') do
      post :create, braid_config: { braider_id: @braid_config.braider_id, feet_per_hour: @braid_config.feet_per_hour, gear_teeth: @braid_config.gear_teeth, inches_per_minute: @braid_config.inches_per_minute, picks_per_inch: @braid_config.picks_per_inch, pinion_teeth: @braid_config.pinion_teeth }
    end

    assert_redirected_to braid_config_path(assigns(:braid_config))
  end

  test "should show braid_config" do
    get :show, id: @braid_config
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @braid_config
    assert_response :success
  end

  test "should update braid_config" do
    patch :update, id: @braid_config, braid_config: { braider_id: @braid_config.braider_id, feet_per_hour: @braid_config.feet_per_hour, gear_teeth: @braid_config.gear_teeth, inches_per_minute: @braid_config.inches_per_minute, picks_per_inch: @braid_config.picks_per_inch, pinion_teeth: @braid_config.pinion_teeth }
    assert_redirected_to braid_config_path(assigns(:braid_config))
  end

  test "should destroy braid_config" do
    assert_difference('BraidConfig.count', -1) do
      delete :destroy, id: @braid_config
    end

    assert_redirected_to braid_configs_path
  end
end
