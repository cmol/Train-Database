require 'test_helper'

class TrainLokomotivesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => TrainLokomotive.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    TrainLokomotive.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    TrainLokomotive.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to train_lokomotive_url(assigns(:train_lokomotive))
  end
  
  def test_edit
    get :edit, :id => TrainLokomotive.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    TrainLokomotive.any_instance.stubs(:valid?).returns(false)
    put :update, :id => TrainLokomotive.first
    assert_template 'edit'
  end
  
  def test_update_valid
    TrainLokomotive.any_instance.stubs(:valid?).returns(true)
    put :update, :id => TrainLokomotive.first
    assert_redirected_to train_lokomotive_url(assigns(:train_lokomotive))
  end
  
  def test_destroy
    train_lokomotive = TrainLokomotive.first
    delete :destroy, :id => train_lokomotive
    assert_redirected_to train_lokomotives_url
    assert !TrainLokomotive.exists?(train_lokomotive.id)
  end
end
