require "test_helper"

class ActivitiesTablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @activities_table = activities_tables(:one)
  end

  test "should get index" do
    get activities_tables_url
    assert_response :success
  end

  test "should get new" do
    get new_activities_table_url
    assert_response :success
  end

  test "should create activities_table" do
    assert_difference("ActivitiesTable.count") do
      post activities_tables_url, params: { activities_table: { complete: @activities_table.complete, ordered: @activities_table.ordered } }
    end

    assert_redirected_to activities_table_url(ActivitiesTable.last)
  end

  test "should show activities_table" do
    get activities_table_url(@activities_table)
    assert_response :success
  end

  test "should get edit" do
    get edit_activities_table_url(@activities_table)
    assert_response :success
  end

  test "should update activities_table" do
    patch activities_table_url(@activities_table), params: { activities_table: { complete: @activities_table.complete, ordered: @activities_table.ordered } }
    assert_redirected_to activities_table_url(@activities_table)
  end

  test "should destroy activities_table" do
    assert_difference("ActivitiesTable.count", -1) do
      delete activities_table_url(@activities_table)
    end

    assert_redirected_to activities_tables_url
  end
end
