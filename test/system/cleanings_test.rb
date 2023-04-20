require "application_system_test_case"

class CleaningsTest < ApplicationSystemTestCase
  setup do
    @cleaning = cleanings(:one)
  end

  test "visiting the index" do
    visit cleanings_url
    assert_selector "h1", text: "Cleanings"
  end

  test "should create cleaning" do
    visit cleanings_url
    click_on "New cleaning"

    fill_in "Hour", with: @cleaning.hour
    click_on "Create Cleaning"

    assert_text "Cleaning was successfully created"
    click_on "Back"
  end

  test "should update Cleaning" do
    visit cleaning_url(@cleaning)
    click_on "Edit this cleaning", match: :first

    fill_in "Hour", with: @cleaning.hour
    click_on "Update Cleaning"

    assert_text "Cleaning was successfully updated"
    click_on "Back"
  end

  test "should destroy Cleaning" do
    visit cleaning_url(@cleaning)
    click_on "Destroy this cleaning", match: :first

    assert_text "Cleaning was successfully destroyed"
  end
end
