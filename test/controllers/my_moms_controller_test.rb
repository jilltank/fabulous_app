require 'test_helper'

class MyMomsControllerTest < ActionController::TestCase
  setup do
    @my_mom = my_moms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:my_moms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create my_mom" do
    assert_difference('MyMom.count') do
      post :create, my_mom: {  }
    end

    assert_redirected_to my_mom_path(assigns(:my_mom))
  end

  test "should show my_mom" do
    get :show, id: @my_mom
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @my_mom
    assert_response :success
  end

  test "should update my_mom" do
    patch :update, id: @my_mom, my_mom: {  }
    assert_redirected_to my_mom_path(assigns(:my_mom))
  end

  test "should destroy my_mom" do
    assert_difference('MyMom.count', -1) do
      delete :destroy, id: @my_mom
    end

    assert_redirected_to my_moms_path
  end
end
