require "test_helper"

class TreyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get trey_index_url
    assert_response :success
  end
end
