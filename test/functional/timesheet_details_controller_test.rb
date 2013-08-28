require 'test_helper'

class TimesheetDetailsControllerTest < ActionController::TestCase
  setup do
    @timesheet_detail = timesheet_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:timesheet_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create timesheet_detail" do
    assert_difference('TimesheetDetail.count') do
      post :create, timesheet_detail: { activity: @timesheet_detail.activity, activity_id: @timesheet_detail.activity_id, description: @timesheet_detail.description, employee_id: @timesheet_detail.employee_id, friday: @timesheet_detail.friday, monday: @timesheet_detail.monday, project: @timesheet_detail.project, project_id: @timesheet_detail.project_id, saturday: @timesheet_detail.saturday, sunday: @timesheet_detail.sunday, thursday: @timesheet_detail.thursday, timesheet_id: @timesheet_detail.timesheet_id, total_hours: @timesheet_detail.total_hours, tuesday: @timesheet_detail.tuesday, wednesday: @timesheet_detail.wednesday }
    end

    assert_redirected_to timesheet_detail_path(assigns(:timesheet_detail))
  end

  test "should show timesheet_detail" do
    get :show, id: @timesheet_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @timesheet_detail
    assert_response :success
  end

  test "should update timesheet_detail" do
    put :update, id: @timesheet_detail, timesheet_detail: { activity: @timesheet_detail.activity, activity_id: @timesheet_detail.activity_id, description: @timesheet_detail.description, employee_id: @timesheet_detail.employee_id, friday: @timesheet_detail.friday, monday: @timesheet_detail.monday, project: @timesheet_detail.project, project_id: @timesheet_detail.project_id, saturday: @timesheet_detail.saturday, sunday: @timesheet_detail.sunday, thursday: @timesheet_detail.thursday, timesheet_id: @timesheet_detail.timesheet_id, total_hours: @timesheet_detail.total_hours, tuesday: @timesheet_detail.tuesday, wednesday: @timesheet_detail.wednesday }
    assert_redirected_to timesheet_detail_path(assigns(:timesheet_detail))
  end

  test "should destroy timesheet_detail" do
    assert_difference('TimesheetDetail.count', -1) do
      delete :destroy, id: @timesheet_detail
    end

    assert_redirected_to timesheet_details_path
  end
end
