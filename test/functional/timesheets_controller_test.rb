require 'test_helper'

class TimesheetsControllerTest < ActionController::TestCase
  setup do
    @timesheet = timesheets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:timesheets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create timesheet" do
    assert_difference('Timesheet.count') do
      post :create, timesheet: { employee_id: @timesheet.employee_id, friday: @timesheet.friday, monday: @timesheet.monday, saturday: @timesheet.saturday, status: @timesheet.status, sunday: @timesheet.sunday, thursday: @timesheet.thursday, total_hours: @timesheet.total_hours, tuesday: @timesheet.tuesday, wednesday: @timesheet.wednesday, week_start_date: @timesheet.week_start_date }
    end

    assert_redirected_to timesheet_path(assigns(:timesheet))
  end

  test "should show timesheet" do
    get :show, id: @timesheet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @timesheet
    assert_response :success
  end

  test "should update timesheet" do
    put :update, id: @timesheet, timesheet: { employee_id: @timesheet.employee_id, friday: @timesheet.friday, monday: @timesheet.monday, saturday: @timesheet.saturday, status: @timesheet.status, sunday: @timesheet.sunday, thursday: @timesheet.thursday, total_hours: @timesheet.total_hours, tuesday: @timesheet.tuesday, wednesday: @timesheet.wednesday, week_start_date: @timesheet.week_start_date }
    assert_redirected_to timesheet_path(assigns(:timesheet))
  end

  test "should destroy timesheet" do
    assert_difference('Timesheet.count', -1) do
      delete :destroy, id: @timesheet
    end

    assert_redirected_to timesheets_path
  end
end
