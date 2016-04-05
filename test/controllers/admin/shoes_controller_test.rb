require 'test_helper'

class Admin::ShoesControllerTest < ActionController::TestCase
  setup do
    @admin_shoe = admin_shoes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_shoes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_shoe" do
    assert_difference('Admin::Shoe.count') do
      post :create, admin_shoe: {  }
    end

    assert_redirected_to admin_shoe_path(assigns(:admin_shoe))
  end

  test "should show admin_shoe" do
    get :show, id: @admin_shoe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_shoe
    assert_response :success
  end

  test "should update admin_shoe" do
    patch :update, id: @admin_shoe, admin_shoe: {  }
    assert_redirected_to admin_shoe_path(assigns(:admin_shoe))
  end

  test "should destroy admin_shoe" do
    assert_difference('Admin::Shoe.count', -1) do
      delete :destroy, id: @admin_shoe
    end

    assert_redirected_to admin_shoes_path
  end
end
