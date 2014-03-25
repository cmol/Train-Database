require 'test_helper'

class TrainLocomotivesControllerTest < ActionController::TestCase
  setup do
    @train_locomotive = train_locomotives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:train_locomotives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create train_locomotive" do
    assert_difference('TrainLocomotive.count') do
      post :create, train_locomotive: { box_number: @train_locomotive.box_number, decoder_address: @train_locomotive.decoder_address, decoder_id: @train_locomotive.decoder_id, locomotive_class_name: @train_locomotive.locomotive_class_name, locomotive_class_number: @train_locomotive.locomotive_class_number, locomotive_type_id: @train_locomotive.locomotive_type_id, make_id: @train_locomotive.make_id, operator_id: @train_locomotive.operator_id, owner_id: @train_locomotive.owner_id, price: @train_locomotive.price }
    end

    assert_redirected_to train_locomotive_path(assigns(:train_locomotive))
  end

  test "should show train_locomotive" do
    get :show, id: @train_locomotive
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @train_locomotive
    assert_response :success
  end

  test "should update train_locomotive" do
    patch :update, id: @train_locomotive, train_locomotive: { box_number: @train_locomotive.box_number, decoder_address: @train_locomotive.decoder_address, decoder_id: @train_locomotive.decoder_id, locomotive_class_name: @train_locomotive.locomotive_class_name, locomotive_class_number: @train_locomotive.locomotive_class_number, locomotive_type_id: @train_locomotive.locomotive_type_id, make_id: @train_locomotive.make_id, operator_id: @train_locomotive.operator_id, owner_id: @train_locomotive.owner_id, price: @train_locomotive.price }
    assert_redirected_to train_locomotive_path(assigns(:train_locomotive))
  end

  test "should destroy train_locomotive" do
    assert_difference('TrainLocomotive.count', -1) do
      delete :destroy, id: @train_locomotive
    end

    assert_redirected_to train_locomotives_path
  end
end
