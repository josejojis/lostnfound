require "test_helper"

class FoundReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @found_report = found_reports(:one)
  end

  test "should get index" do
    get found_reports_url
    assert_response :success
  end

  test "should get new" do
    get new_found_report_url
    assert_response :success
  end

  test "should create found_report" do
    assert_difference("FoundReport.count") do
      post found_reports_url, params: { found_report: { date: @found_report.date, description: @found_report.description, item_name: @found_report.item_name, location_found: @found_report.location_found } }
    end

    assert_redirected_to found_report_url(FoundReport.last)
  end

  test "should show found_report" do
    get found_report_url(@found_report)
    assert_response :success
  end

  test "should get edit" do
    get edit_found_report_url(@found_report)
    assert_response :success
  end

  test "should update found_report" do
    patch found_report_url(@found_report), params: { found_report: { date: @found_report.date, description: @found_report.description, item_name: @found_report.item_name, location_found: @found_report.location_found } }
    assert_redirected_to found_report_url(@found_report)
  end

  test "should destroy found_report" do
    assert_difference("FoundReport.count", -1) do
      delete found_report_url(@found_report)
    end

    assert_redirected_to found_reports_url
  end
end
