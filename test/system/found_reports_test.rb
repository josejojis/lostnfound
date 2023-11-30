require "application_system_test_case"

class FoundReportsTest < ApplicationSystemTestCase
  setup do
    @found_report = found_reports(:one)
  end

  test "visiting the index" do
    visit found_reports_url
    assert_selector "h1", text: "Found reports"
  end

  test "should create found report" do
    visit found_reports_url
    click_on "New found report"

    fill_in "Date", with: @found_report.date
    fill_in "Description", with: @found_report.description
    fill_in "Item name", with: @found_report.item_name
    fill_in "Location found", with: @found_report.location_found
    click_on "Create Found report"

    assert_text "Found report was successfully created"
    click_on "Back"
  end

  test "should update Found report" do
    visit found_report_url(@found_report)
    click_on "Edit this found report", match: :first

    fill_in "Date", with: @found_report.date
    fill_in "Description", with: @found_report.description
    fill_in "Item name", with: @found_report.item_name
    fill_in "Location found", with: @found_report.location_found
    click_on "Update Found report"

    assert_text "Found report was successfully updated"
    click_on "Back"
  end

  test "should destroy Found report" do
    visit found_report_url(@found_report)
    click_on "Destroy this found report", match: :first

    assert_text "Found report was successfully destroyed"
  end
end
