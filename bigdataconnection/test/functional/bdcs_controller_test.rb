require 'test_helper'

class BdcsControllerTest < ActionController::TestCase
  setup do
    @bdc = bdcs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bdcs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bdc" do
    assert_difference('Bdc.count') do
      post :create, bdc: {  }
    end

    assert_redirected_to bdc_path(assigns(:bdc))
  end

  test "should show bdc" do
    get :show, id: @bdc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bdc
    assert_response :success
  end

  test "should update bdc" do
    put :update, id: @bdc, bdc: {  }
    assert_redirected_to bdc_path(assigns(:bdc))
  end

  test "should destroy bdc" do
    assert_difference('Bdc.count', -1) do
      delete :destroy, id: @bdc
    end

    assert_redirected_to bdcs_path
  end
end
