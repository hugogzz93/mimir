require 'test_helper'

class ActivityControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get activity_create_url
    assert_response :success
  end

end
