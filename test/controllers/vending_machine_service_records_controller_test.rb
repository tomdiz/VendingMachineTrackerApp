require 'test_helper'

class VendingMachineServiceRecordsControllerTest < ActionController::TestCase
  setup do
    @vending_machine_service_record = vending_machine_service_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vending_machine_service_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vending_machine_service_record" do
    assert_difference('VendingMachineServiceRecord.count') do
      post :create, vending_machine_service_record: { creditsAdded: @vending_machine_service_record.creditsAdded, dailyHighScore: @vending_machine_service_record.dailyHighScore, gameMode: @vending_machine_service_record.gameMode, lastScore: @vending_machine_service_record.lastScore, lightConfiguration: @vending_machine_service_record.lightConfiguration, merchantID: @vending_machine_service_record.merchantID, numberOfGamesPlayed: @vending_machine_service_record.numberOfGamesPlayed, photoTaken: @vending_machine_service_record.photoTaken, serialNumber: @vending_machine_service_record.serialNumber, serviceNotes: @vending_machine_service_record.serviceNotes, serviceTime: @vending_machine_service_record.serviceTime, ticketsAdded: @vending_machine_service_record.ticketsAdded, ticketsDispensed: @vending_machine_service_record.ticketsDispensed, ticketsRedeemed: @vending_machine_service_record.ticketsRedeemed }
    end

    assert_redirected_to vending_machine_service_record_path(assigns(:vending_machine_service_record))
  end

  test "should show vending_machine_service_record" do
    get :show, id: @vending_machine_service_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vending_machine_service_record
    assert_response :success
  end

  test "should update vending_machine_service_record" do
    patch :update, id: @vending_machine_service_record, vending_machine_service_record: { creditsAdded: @vending_machine_service_record.creditsAdded, dailyHighScore: @vending_machine_service_record.dailyHighScore, gameMode: @vending_machine_service_record.gameMode, lastScore: @vending_machine_service_record.lastScore, lightConfiguration: @vending_machine_service_record.lightConfiguration, merchantID: @vending_machine_service_record.merchantID, numberOfGamesPlayed: @vending_machine_service_record.numberOfGamesPlayed, photoTaken: @vending_machine_service_record.photoTaken, serialNumber: @vending_machine_service_record.serialNumber, serviceNotes: @vending_machine_service_record.serviceNotes, serviceTime: @vending_machine_service_record.serviceTime, ticketsAdded: @vending_machine_service_record.ticketsAdded, ticketsDispensed: @vending_machine_service_record.ticketsDispensed, ticketsRedeemed: @vending_machine_service_record.ticketsRedeemed }
    assert_redirected_to vending_machine_service_record_path(assigns(:vending_machine_service_record))
  end

  test "should destroy vending_machine_service_record" do
    assert_difference('VendingMachineServiceRecord.count', -1) do
      delete :destroy, id: @vending_machine_service_record
    end

    assert_redirected_to vending_machine_service_records_path
  end
end
