require 'test_helper'

class Name:stringsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Name:string.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Name:string.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Name:string.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to name:string_url(assigns(:name:string))
  end
  
  def test_edit
    get :edit, :id => Name:string.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Name:string.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Name:string.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Name:string.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Name:string.first
    assert_redirected_to name:string_url(assigns(:name:string))
  end
  
  def test_destroy
    name:string = Name:string.first
    delete :destroy, :id => name:string
    assert_redirected_to name:strings_url
    assert !Name:string.exists?(name:string.id)
  end
end
