require 'test_helper'

class UserGreetingsControllerTest < ActionController::TestCase
  test "should get start" do
    get :start
    assert_response :success
  end

end
