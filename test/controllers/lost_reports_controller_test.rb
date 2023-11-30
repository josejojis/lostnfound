require "test_helper"

class LostReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lost_report = lost_reports(:one)
  end

  test "should get index" do
    get lost_reports_url
    assert_response :success
  end

  test "should get new" do
    get new_lost_report_url
    assert_response :success
  end

  test "should create lost_report" do
    assert_difference("LostReport.count") do
      post lost_reports_url, params: { lost_report: { date_lost: @lost_report.date_lost, location: @lost_report.location, name: @lost_report.name } }
    end

    assert_redirected_to lost_report_url(LostReport.last)
  end

  test "should show lost_report" do
    get lost_report_url(@lost_report)
    assert_response :success
  end

  test "should get edit" do
    get edit_lost_report_url(@lost_report)
    assert_response :success
  end

  test "should update lost_report" do
    patch lost_report_url(@lost_report), params: { lost_report: { date_lost: @lost_report.date_lost, location: @lost_report.location, name: @lost_report.name } }
    assert_redirected_to lost_report_url(@lost_report)
  end

  test "should destroy lost_report" do
    assert_difference("LostReport.count", -1) do
      delete lost_report_url(@lost_report)
    end

    assert_redirected_to lost_reports_url
  end
end
