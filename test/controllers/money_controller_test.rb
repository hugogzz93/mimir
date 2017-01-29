require 'test_helper'

class MoneyControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get money_create_url
    assert_response :success
  end

end
