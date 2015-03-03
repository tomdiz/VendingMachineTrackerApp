require 'test_helper'

class VendingMachinesControllerTest < ActionController::TestCase
  setup do
    @vending_machine = vending_machines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vending_machines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vending_machine" do
    assert_difference('VendingMachine.count') do
      post :create, vending_machine: { currentCredits: @vending_machine.currentCredits, currentGameMode: @vending_machine.currentGameMode, currentLightConfiguration: @vending_machine.currentLightConfiguration, embeddedAuxBoardMajor: @vending_machine.embeddedAuxBoardMajor, embeddedAuxBoardMinor: @vending_machine.embeddedAuxBoardMinor, gameMajorVersion: @vending_machine.gameMajorVersion, gameMinorVersion: @vending_machine.gameMinorVersion, lastScore: @vending_machine.lastScore, latitude: @vending_machine.latitude, locationName: @vending_machine.locationName, longitude: @vending_machine.longitude, machineID: @vending_machine.machineID, machineType: @vending_machine.machineType, merchantID: @vending_machine.merchantID, notes: @vending_machine.notes, numberGamesPlayed: @vending_machine.numberGamesPlayed, numberPhotos: @vending_machine.numberPhotos, numberVendRows: @vending_machine.numberVendRows, objectName: @vending_machine.objectName, serialNumber: @vending_machine.serialNumber, totalNumberErrorVends: @vending_machine.totalNumberErrorVends, totalNumberSuccessVends: @vending_machine.totalNumberSuccessVends, totalNumberTicketsAdded: @vending_machine.totalNumberTicketsAdded, totalNumberTicketsPrinted: @vending_machine.totalNumberTicketsPrinted, totalNumberTicketsRedeemed: @vending_machine.totalNumberTicketsRedeemed }
    end

    assert_redirected_to vending_machine_path(assigns(:vending_machine))
  end

  test "should show vending_machine" do
    get :show, id: @vending_machine
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vending_machine
    assert_response :success
  end

  test "should update vending_machine" do
    patch :update, id: @vending_machine, vending_machine: { currentCredits: @vending_machine.currentCredits, currentGameMode: @vending_machine.currentGameMode, currentLightConfiguration: @vending_machine.currentLightConfiguration, embeddedAuxBoardMajor: @vending_machine.embeddedAuxBoardMajor, embeddedAuxBoardMinor: @vending_machine.embeddedAuxBoardMinor, gameMajorVersion: @vending_machine.gameMajorVersion, gameMinorVersion: @vending_machine.gameMinorVersion, lastScore: @vending_machine.lastScore, latitude: @vending_machine.latitude, locationName: @vending_machine.locationName, longitude: @vending_machine.longitude, machineID: @vending_machine.machineID, machineType: @vending_machine.machineType, merchantID: @vending_machine.merchantID, notes: @vending_machine.notes, numberGamesPlayed: @vending_machine.numberGamesPlayed, numberPhotos: @vending_machine.numberPhotos, numberVendRows: @vending_machine.numberVendRows, objectName: @vending_machine.objectName, serialNumber: @vending_machine.serialNumber, totalNumberErrorVends: @vending_machine.totalNumberErrorVends, totalNumberSuccessVends: @vending_machine.totalNumberSuccessVends, totalNumberTicketsAdded: @vending_machine.totalNumberTicketsAdded, totalNumberTicketsPrinted: @vending_machine.totalNumberTicketsPrinted, totalNumberTicketsRedeemed: @vending_machine.totalNumberTicketsRedeemed }
    assert_redirected_to vending_machine_path(assigns(:vending_machine))
  end

  test "should destroy vending_machine" do
    assert_difference('VendingMachine.count', -1) do
      delete :destroy, id: @vending_machine
    end

    assert_redirected_to vending_machines_path
  end
end
