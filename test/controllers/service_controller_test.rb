require 'test_helper'

class ServiceControllerTest < ActionController::TestCase
  test "should get bypass" do
    get :bypass
    assert_response :success
  end

end
