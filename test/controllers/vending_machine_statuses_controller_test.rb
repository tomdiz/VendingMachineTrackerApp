require 'test_helper'

class VendingMachineStatusesControllerTest < ActionController::TestCase
  setup do
    @vending_machine_status = vending_machine_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vending_machine_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vending_machine_status" do
    assert_difference('VendingMachineStatus.count') do
      post :create, vending_machine_status: { row: @vending_machine_status.row, serialNumber: @vending_machine_status.serialNumber, total: @vending_machine_status.total, type: @vending_machine_status.type }
    end

    assert_redirected_to vending_machine_status_path(assigns(:vending_machine_status))
  end

  test "should show vending_machine_status" do
    get :show, id: @vending_machine_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vending_machine_status
    assert_response :success
  end

  test "should update vending_machine_status" do
    patch :update, id: @vending_machine_status, vending_machine_status: { row: @vending_machine_status.row, serialNumber: @vending_machine_status.serialNumber, total: @vending_machine_status.total, type: @vending_machine_status.type }
    assert_redirected_to vending_machine_status_path(assigns(:vending_machine_status))
  end

  test "should destroy vending_machine_status" do
    assert_difference('VendingMachineStatus.count', -1) do
      delete :destroy, id: @vending_machine_status
    end

    assert_redirected_to vending_machine_statuses_path
  end
end
