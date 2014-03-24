require 'test_helper'

class WstudentsControllerTest < ActionController::TestCase
  setup do
    @wstudent = wstudents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wstudents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wstudent" do
    assert_difference('Wstudent.count') do
      post :create, wstudent: {  }
    end

    assert_redirected_to wstudent_path(assigns(:wstudent))
  end

  test "should show wstudent" do
    get :show, id: @wstudent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wstudent
    assert_response :success
  end

  test "should update wstudent" do
    patch :update, id: @wstudent, wstudent: {  }
    assert_redirected_to wstudent_path(assigns(:wstudent))
  end

  test "should destroy wstudent" do
    assert_difference('Wstudent.count', -1) do
      delete :destroy, id: @wstudent
    end

    assert_redirected_to wstudents_path
  end
end
