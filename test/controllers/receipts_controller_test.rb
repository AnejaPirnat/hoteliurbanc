require "test_helper"

class ReceiptsControllerTest < ActionDispatch::IntegrationTest
  test "should get my_receipts" do
    get receipts_my_receipts_url
    assert_response :success
  end
end
