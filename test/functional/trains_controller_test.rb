require 'test_helper'

class TrainsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Train.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Train.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Train.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to train_url(assigns(:train))
  end
  
  def test_edit
    get :edit, :id => Train.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Train.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Train.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Train.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Train.first
    assert_redirected_to train_url(assigns(:train))
  end
  
  def test_destroy
    train = Train.first
    delete :destroy, :id => train
    assert_redirected_to trains_url
    assert !Train.exists?(train.id)
  end
end
