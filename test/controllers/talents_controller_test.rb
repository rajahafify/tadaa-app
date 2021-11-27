require "test_helper"

class TalentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get talents_index_url
    assert_response :success
  end
end
