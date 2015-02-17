require 'test_helper'

class MemberControllerTest < ActionController::TestCase
<<<<<<< HEAD
=======
  test "should get new" do
    get :new
    assert_response :success
  end

>>>>>>> 849474f768df056bb233a4de3377a44300809591
  test "should get sign_up" do
    get :sign_up
    assert_response :success
  end

  test "should get login" do
    get :login
    assert_response :success
  end

end
