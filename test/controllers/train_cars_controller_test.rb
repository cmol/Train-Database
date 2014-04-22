require 'test_helper'

class TrainCarsControllerTest < ActionController::TestCase
  setup do
    @train_car = train_cars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:train_cars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create train_car" do
    assert_difference('TrainCar.count') do
      post :create, train_car: { box_number: @train_car.box_number, car_class_name: @train_car.car_class_name, car_class_number: @train_car.car_class_number, car_type_id: @train_car.car_type_id, make_id: @train_car.make_id, operator_id: @train_car.operator_id, owner_id: @train_car.owner_id, price: @train_car.price }
    end

    assert_redirected_to train_car_path(assigns(:train_car))
  end

  test "should show train_car" do
    get :show, id: @train_car
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @train_car
    assert_response :success
  end

  test "should update train_car" do
    patch :update, id: @train_car, train_car: { box_number: @train_car.box_number, car_class_name: @train_car.car_class_name, car_class_number: @train_car.car_class_number, car_type_id: @train_car.car_type_id, make_id: @train_car.make_id, operator_id: @train_car.operator_id, owner_id: @train_car.owner_id, price: @train_car.price }
    assert_redirected_to train_car_path(assigns(:train_car))
  end

  test "should destroy train_car" do
    assert_difference('TrainCar.count', -1) do
      delete :destroy, id: @train_car
    end

    assert_redirected_to train_cars_path
  end
end
