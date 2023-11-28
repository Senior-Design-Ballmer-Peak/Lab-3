require "test_helper"

class CharlieControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get charlie_index_url
    assert_response :success
  end
end
