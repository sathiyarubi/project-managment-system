require 'test_helper'

class EmployeesControllerTest < ActionController::TestCase
  setup do
    @employee = employees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee" do
    assert_difference('Employee.count') do
      post :create, employee: { address: @employee.address, city: @employee.city, dob: @employee.dob, email: @employee.email, gender: @employee.gender, manager_id: @employee.manager_id, mobile_no: @employee.mobile_no, name: @employee.name, password_digest: @employee.password_digest, pin_code: @employee.pin_code, role_id: @employee.role_id, state: @employee.state }
    end

    assert_redirected_to employee_path(assigns(:employee))
  end

  test "should show employee" do
    get :show, id: @employee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employee
    assert_response :success
  end

  test "should update employee" do
    put :update, id: @employee, employee: { address: @employee.address, city: @employee.city, dob: @employee.dob, email: @employee.email, gender: @employee.gender, manager_id: @employee.manager_id, mobile_no: @employee.mobile_no, name: @employee.name, password_digest: @employee.password_digest, pin_code: @employee.pin_code, role_id: @employee.role_id, state: @employee.state }
    assert_redirected_to employee_path(assigns(:employee))
  end

  test "should destroy employee" do
    assert_difference('Employee.count', -1) do
      delete :destroy, id: @employee
    end

    assert_redirected_to employees_path
  end
end
