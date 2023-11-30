require "application_system_test_case"

class LostReportsTest < ApplicationSystemTestCase
  setup do
    @lost_report = lost_reports(:one)
  end

  test "visiting the index" do
    visit lost_reports_url
    assert_selector "h1", text: "Lost reports"
  end

  test "should create lost report" do
    visit lost_reports_url
    click_on "New lost report"

    fill_in "Date lost", with: @lost_report.date_lost
    fill_in "Location", with: @lost_report.location
    fill_in "Name", with: @lost_report.name
    click_on "Create Lost report"

    assert_text "Lost report was successfully created"
    click_on "Back"
  end

  test "should update Lost report" do
    visit lost_report_url(@lost_report)
    click_on "Edit this lost report", match: :first

    fill_in "Date lost", with: @lost_report.date_lost
    fill_in "Location", with: @lost_report.location
    fill_in "Name", with: @lost_report.name
    click_on "Update Lost report"

    assert_text "Lost report was successfully updated"
    click_on "Back"
  end

  test "should destroy Lost report" do
    visit lost_report_url(@lost_report)
    click_on "Destroy this lost report", match: :first

    assert_text "Lost report was successfully destroyed"
  end
end
