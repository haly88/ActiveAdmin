require 'test_helper'

class ProductsTypesControllerTest < ActionController::TestCase
  setup do
    @products_type = products_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create products_type" do
    assert_difference('ProductsType.count') do
      post :create, products_type: { code: @products_type.code, name: @products_type.name }
    end

    assert_redirected_to products_type_path(assigns(:products_type))
  end

  test "should show products_type" do
    get :show, id: @products_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @products_type
    assert_response :success
  end

  test "should update products_type" do
    patch :update, id: @products_type, products_type: { code: @products_type.code, name: @products_type.name }
    assert_redirected_to products_type_path(assigns(:products_type))
  end

  test "should destroy products_type" do
    assert_difference('ProductsType.count', -1) do
      delete :destroy, id: @products_type
    end

    assert_redirected_to products_types_path
  end
end
