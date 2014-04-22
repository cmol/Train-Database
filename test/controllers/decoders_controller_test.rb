require 'test_helper'

class DecodersControllerTest < ActionController::TestCase
  setup do
    @decoder = decoders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:decoders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create decoder" do
    assert_difference('Decoder.count') do
      post :create, decoder: { name: @decoder.name }
    end

    assert_redirected_to decoder_path(assigns(:decoder))
  end

  test "should show decoder" do
    get :show, id: @decoder
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @decoder
    assert_response :success
  end

  test "should update decoder" do
    patch :update, id: @decoder, decoder: { name: @decoder.name }
    assert_redirected_to decoder_path(assigns(:decoder))
  end

  test "should destroy decoder" do
    assert_difference('Decoder.count', -1) do
      delete :destroy, id: @decoder
    end

    assert_redirected_to decoders_path
  end
end
