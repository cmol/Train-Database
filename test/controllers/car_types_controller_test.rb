require 'test_helper'

class CarTypesControllerTest < ActionController::TestCase
  setup do
    @car_type = car_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:car_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create car_type" do
    assert_difference('CarType.count') do
      post :create, car_type: { name: @car_type.name }
    end

    assert_redirected_to car_type_path(assigns(:car_type))
  end

  test "should show car_type" do
    get :show, id: @car_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @car_type
    assert_response :success
  end

  test "should update car_type" do
    patch :update, id: @car_type, car_type: { name: @car_type.name }
    assert_redirected_to car_type_path(assigns(:car_type))
  end

  test "should destroy car_type" do
    assert_difference('CarType.count', -1) do
      delete :destroy, id: @car_type
    end

    assert_redirected_to car_types_path
  end
end
