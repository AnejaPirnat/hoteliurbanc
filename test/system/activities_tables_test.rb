require "application_system_test_case"

class ActivitiesTablesTest < ApplicationSystemTestCase
  setup do
    @activities_table = activities_tables(:one)
  end

  test "visiting the index" do
    visit activities_tables_url
    assert_selector "h1", text: "Activities tables"
  end

  test "should create activities table" do
    visit activities_tables_url
    click_on "New activities table"

    check "Complete" if @activities_table.complete
    fill_in "Ordered", with: @activities_table.ordered
    click_on "Create Activities table"

    assert_text "Activities table was successfully created"
    click_on "Back"
  end

  test "should update Activities table" do
    visit activities_table_url(@activities_table)
    click_on "Edit this activities table", match: :first

    check "Complete" if @activities_table.complete
    fill_in "Ordered", with: @activities_table.ordered
    click_on "Update Activities table"

    assert_text "Activities table was successfully updated"
    click_on "Back"
  end

  test "should destroy Activities table" do
    visit activities_table_url(@activities_table)
    click_on "Destroy this activities table", match: :first

    assert_text "Activities table was successfully destroyed"
  end
end
