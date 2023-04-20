require "test_helper"

class CleaningsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cleaning = cleanings(:one)
  end

  test "should get index" do
    get cleanings_url
    assert_response :success
  end

  test "should get new" do
    get new_cleaning_url
    assert_response :success
  end

  test "should create cleaning" do
    assert_difference("Cleaning.count") do
      post cleanings_url, params: { cleaning: { hour: @cleaning.hour } }
    end

    assert_redirected_to cleaning_url(Cleaning.last)
  end

  test "should show cleaning" do
    get cleaning_url(@cleaning)
    assert_response :success
  end

  test "should get edit" do
    get edit_cleaning_url(@cleaning)
    assert_response :success
  end

  test "should update cleaning" do
    patch cleaning_url(@cleaning), params: { cleaning: { hour: @cleaning.hour } }
    assert_redirected_to cleaning_url(@cleaning)
  end

  test "should destroy cleaning" do
    assert_difference("Cleaning.count", -1) do
      delete cleaning_url(@cleaning)
    end

    assert_redirected_to cleanings_url
  end
end
