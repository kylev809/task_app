require 'test_helper'

class UsertasksControllerTest < ActionController::TestCase
  setup do
    @usertask = usertasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usertasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usertask" do
    assert_difference('Usertask.count') do
      post :create, usertask: { description: @usertask.description, due: @usertask.due }
    end

    assert_redirected_to usertask_path(assigns(:usertask))
  end

  test "should show usertask" do
    get :show, id: @usertask
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usertask
    assert_response :success
  end

  test "should update usertask" do
    patch :update, id: @usertask, usertask: { description: @usertask.description, due: @usertask.due }
    assert_redirected_to usertask_path(assigns(:usertask))
  end

  test "should destroy usertask" do
    assert_difference('Usertask.count', -1) do
      delete :destroy, id: @usertask
    end

    assert_redirected_to usertasks_path
  end
end
