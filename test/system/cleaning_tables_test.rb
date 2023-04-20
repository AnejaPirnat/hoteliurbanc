require "application_system_test_case"

class CleaningTablesTest < ApplicationSystemTestCase
  setup do
    @cleaning_table = cleaning_tables(:one)
  end

  test "visiting the index" do
    visit cleaning_tables_url
    assert_selector "h1", text: "Cleaning tables"
  end

  test "should create cleaning table" do
    visit cleaning_tables_url
    click_on "New cleaning table"

    check "Complete" if @cleaning_table.complete
    fill_in "Ordered", with: @cleaning_table.ordered
    click_on "Create Cleaning table"

    assert_text "Cleaning table was successfully created"
    click_on "Back"
  end

  test "should update Cleaning table" do
    visit cleaning_table_url(@cleaning_table)
    click_on "Edit this cleaning table", match: :first

    check "Complete" if @cleaning_table.complete
    fill_in "Ordered", with: @cleaning_table.ordered
    click_on "Update Cleaning table"

    assert_text "Cleaning table was successfully updated"
    click_on "Back"
  end

  test "should destroy Cleaning table" do
    visit cleaning_table_url(@cleaning_table)
    click_on "Destroy this cleaning table", match: :first

    assert_text "Cleaning table was successfully destroyed"
  end
end
