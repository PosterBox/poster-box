require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get redirect" do
    get :redirect
    assert_response :success
  end

end
