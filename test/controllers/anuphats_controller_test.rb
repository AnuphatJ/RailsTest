require 'test_helper'

class AnuphatsControllerTest < ActionController::TestCase
  setup do
    @anuphat = anuphats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:anuphats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create anuphat" do
    assert_difference('Anuphat.count') do
      post :create, anuphat: { login: @anuphat.login }
    end

    assert_redirected_to anuphat_path(assigns(:anuphat))
  end

  test "should show anuphat" do
    get :show, id: @anuphat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @anuphat
    assert_response :success
  end

  test "should update anuphat" do
    patch :update, id: @anuphat, anuphat: { login: @anuphat.login }
    assert_redirected_to anuphat_path(assigns(:anuphat))
  end

  test "should destroy anuphat" do
    assert_difference('Anuphat.count', -1) do
      delete :destroy, id: @anuphat
    end

    assert_redirected_to anuphats_path
  end
end
