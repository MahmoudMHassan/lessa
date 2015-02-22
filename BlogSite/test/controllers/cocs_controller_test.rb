require 'test_helper'

class CocsControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get browse" do
    get :browse
    assert_response :success
  end

end
