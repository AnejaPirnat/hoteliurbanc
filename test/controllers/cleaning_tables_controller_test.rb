require "test_helper"

class CleaningTablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cleaning_table = cleaning_tables(:one)
  end

  test "should get index" do
    get cleaning_tables_url
    assert_response :success
  end

  test "should get new" do
    get new_cleaning_table_url
    assert_response :success
  end

  test "should create cleaning_table" do
    assert_difference("CleaningTable.count") do
      post cleaning_tables_url, params: { cleaning_table: { complete: @cleaning_table.complete, ordered: @cleaning_table.ordered } }
    end

    assert_redirected_to cleaning_table_url(CleaningTable.last)
  end

  test "should show cleaning_table" do
    get cleaning_table_url(@cleaning_table)
    assert_response :success
  end

  test "should get edit" do
    get edit_cleaning_table_url(@cleaning_table)
    assert_response :success
  end

  test "should update cleaning_table" do
    patch cleaning_table_url(@cleaning_table), params: { cleaning_table: { complete: @cleaning_table.complete, ordered: @cleaning_table.ordered } }
    assert_redirected_to cleaning_table_url(@cleaning_table)
  end

  test "should destroy cleaning_table" do
    assert_difference("CleaningTable.count", -1) do
      delete cleaning_table_url(@cleaning_table)
    end

    assert_redirected_to cleaning_tables_url
  end
end
