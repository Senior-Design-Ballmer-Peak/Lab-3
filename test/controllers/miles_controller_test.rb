require "test_helper"

class MilesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get miles_index_url
    assert_response :success
  end
end
