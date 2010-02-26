require 'test_helper'

class MakesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Make.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Make.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Make.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to make_url(assigns(:make))
  end
  
  def test_edit
    get :edit, :id => Make.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Make.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Make.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Make.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Make.first
    assert_redirected_to make_url(assigns(:make))
  end
  
  def test_destroy
    make = Make.first
    delete :destroy, :id => make
    assert_redirected_to makes_url
    assert !Make.exists?(make.id)
  end
end
