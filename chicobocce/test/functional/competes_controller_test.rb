require 'test_helper'

class CompetesControllerTest < ActionController::TestCase
  setup do
    @compete = competes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:competes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create compete" do
    assert_difference('Compete.count') do
      post :create, :compete => @compete.attributes
    end

    assert_redirected_to compete_path(assigns(:compete))
  end

  test "should show compete" do
    get :show, :id => @compete.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @compete.to_param
    assert_response :success
  end

  test "should update compete" do
    put :update, :id => @compete.to_param, :compete => @compete.attributes
    assert_redirected_to compete_path(assigns(:compete))
  end

  test "should destroy compete" do
    assert_difference('Compete.count', -1) do
      delete :destroy, :id => @compete.to_param
    end

    assert_redirected_to competes_path
  end
end
