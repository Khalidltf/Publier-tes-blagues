require "test_helper"

class BlaguesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get blagues_index_url
    assert_response :success
  end

  test "should get show" do
    get blagues_show_url
    assert_response :success
  end
end
