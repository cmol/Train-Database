require 'test_helper'

class LocomotiveTypesControllerTest < ActionController::TestCase
  setup do
    @locomotive_type = locomotive_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:locomotive_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create locomotive_type" do
    assert_difference('LocomotiveType.count') do
      post :create, locomotive_type: { name: @locomotive_type.name }
    end

    assert_redirected_to locomotive_type_path(assigns(:locomotive_type))
  end

  test "should show locomotive_type" do
    get :show, id: @locomotive_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @locomotive_type
    assert_response :success
  end

  test "should update locomotive_type" do
    patch :update, id: @locomotive_type, locomotive_type: { name: @locomotive_type.name }
    assert_redirected_to locomotive_type_path(assigns(:locomotive_type))
  end

  test "should destroy locomotive_type" do
    assert_difference('LocomotiveType.count', -1) do
      delete :destroy, id: @locomotive_type
    end

    assert_redirected_to locomotive_types_path
  end
end
