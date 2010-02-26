require 'test_helper'

class LokomotiveTypesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => LokomotiveType.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    LokomotiveType.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    LokomotiveType.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to lokomotive_type_url(assigns(:lokomotive_type))
  end
  
  def test_edit
    get :edit, :id => LokomotiveType.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    LokomotiveType.any_instance.stubs(:valid?).returns(false)
    put :update, :id => LokomotiveType.first
    assert_template 'edit'
  end
  
  def test_update_valid
    LokomotiveType.any_instance.stubs(:valid?).returns(true)
    put :update, :id => LokomotiveType.first
    assert_redirected_to lokomotive_type_url(assigns(:lokomotive_type))
  end
  
  def test_destroy
    lokomotive_type = LokomotiveType.first
    delete :destroy, :id => lokomotive_type
    assert_redirected_to lokomotive_types_url
    assert !LokomotiveType.exists?(lokomotive_type.id)
  end
end
