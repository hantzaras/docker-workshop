require 'test_helper'

class HelloControllerTest < ActionController::TestCase
  test "should get workable" do
    get :workable
    assert_response :success
  end

end
