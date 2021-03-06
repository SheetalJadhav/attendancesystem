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
      post :create, employee: { active: @employee.active, address: @employee.address, boolean: @employee.boolean, contact: @employee.contact, dob: @employee.dob, email: @employee.email, firstname: @employee.firstname, lastname: @employee.lastname, middlename: @employee.middlename }
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
    patch :update, id: @employee, employee: { active: @employee.active, address: @employee.address, boolean: @employee.boolean, contact: @employee.contact, dob: @employee.dob, email: @employee.email, firstname: @employee.firstname, lastname: @employee.lastname, middlename: @employee.middlename }
    assert_redirected_to employee_path(assigns(:employee))
  end

  test "should destroy employee" do
    assert_difference('Employee.count', -1) do
      delete :destroy, id: @employee
    end

    assert_redirected_to employees_path
  end
end
