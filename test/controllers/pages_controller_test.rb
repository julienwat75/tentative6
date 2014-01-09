require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get confirmation" do
    get :confirmation
    assert_response :success
  end

end
