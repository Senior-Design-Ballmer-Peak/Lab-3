require "test_helper"

class TristanControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tristan_index_url
    assert_response :success
  end
end
