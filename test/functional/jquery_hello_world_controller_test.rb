require 'test_helper'

class JqueryHelloWorldControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
