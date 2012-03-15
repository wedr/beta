require 'test_helper'

class SluzbiesControllerTest < ActionController::TestCase
  setup do
    @sluzby = sluzbies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sluzbies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sluzby" do
    assert_difference('Sluzby.count') do
      post :create, sluzby: @sluzby.attributes
    end

    assert_redirected_to sluzby_path(assigns(:sluzby))
  end

  test "should show sluzby" do
    get :show, id: @sluzby
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sluzby
    assert_response :success
  end

  test "should update sluzby" do
    put :update, id: @sluzby, sluzby: @sluzby.attributes
    assert_redirected_to sluzby_path(assigns(:sluzby))
  end

  test "should destroy sluzby" do
    assert_difference('Sluzby.count', -1) do
      delete :destroy, id: @sluzby
    end

    assert_redirected_to sluzbies_path
  end
end
