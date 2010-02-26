require 'test_helper'

class TrainCarsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => TrainCar.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    TrainCar.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    TrainCar.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to train_car_url(assigns(:train_car))
  end
  
  def test_edit
    get :edit, :id => TrainCar.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    TrainCar.any_instance.stubs(:valid?).returns(false)
    put :update, :id => TrainCar.first
    assert_template 'edit'
  end
  
  def test_update_valid
    TrainCar.any_instance.stubs(:valid?).returns(true)
    put :update, :id => TrainCar.first
    assert_redirected_to train_car_url(assigns(:train_car))
  end
  
  def test_destroy
    train_car = TrainCar.first
    delete :destroy, :id => train_car
    assert_redirected_to train_cars_url
    assert !TrainCar.exists?(train_car.id)
  end
end
