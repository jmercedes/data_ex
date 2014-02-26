require 'test_helper'

class Form607sControllerTest < ActionController::TestCase
  setup do
    @form607 = form607s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:form607s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create form607" do
    assert_difference('Form607.count') do
      post :create, form607: { company: @form607.company }
    end

    assert_redirected_to form607_path(assigns(:form607))
  end

  test "should show form607" do
    get :show, id: @form607
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @form607
    assert_response :success
  end

  test "should update form607" do
    patch :update, id: @form607, form607: { company: @form607.company }
    assert_redirected_to form607_path(assigns(:form607))
  end

  test "should destroy form607" do
    assert_difference('Form607.count', -1) do
      delete :destroy, id: @form607
    end

    assert_redirected_to form607s_path
  end
end
