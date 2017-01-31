require 'test_helper'

class YourMomsControllerTest < ActionController::TestCase
  setup do
    @your_mom = your_moms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:your_moms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create your_mom" do
    assert_difference('YourMom.count') do
      post :create, your_mom: {  }
    end

    assert_redirected_to your_mom_path(assigns(:your_mom))
  end

  test "should show your_mom" do
    get :show, id: @your_mom
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @your_mom
    assert_response :success
  end

  test "should update your_mom" do
    patch :update, id: @your_mom, your_mom: {  }
    assert_redirected_to your_mom_path(assigns(:your_mom))
  end

  test "should destroy your_mom" do
    assert_difference('YourMom.count', -1) do
      delete :destroy, id: @your_mom
    end

    assert_redirected_to your_moms_path
  end
end
