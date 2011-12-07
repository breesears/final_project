require 'test_helper'

class PlayerControllerTest < ActionController::TestCase
  test "should get firstname:string" do
    get :firstname:string
    assert_response :success
  end

  test "should get lastname:string" do
    get :lastname:string
    assert_response :success
  end

  test "should get email:string" do
    get :email:string
    assert_response :success
  end

  test "should get team_id:integer" do
    get :team_id:integer
    assert_response :success
  end

  test "should get phone:string" do
    get :phone:string
    assert_response :success
  end

end
