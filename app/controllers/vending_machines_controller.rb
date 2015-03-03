class VendingMachinesController < InheritedResources::Base

  private

    def vending_machine_params
      params.require(:vending_machine).permit(:merchantID, :serialNumber, :objectName, :locationName, :notes, :machineID, :gameMinorVersion, :gameMajorVersion, :embeddedAuxBoardMinor, :embeddedAuxBoardMajor, :latitude, :longitude, :numberPhotos, :lastScore, :currentLightConfiguration, :currentGameMode, :currentCredits, :machineType, :numberGamesPlayed, :totalNumberTicketsAdded, :totalNumberTicketsRedeemed, :totalNumberTicketsPrinted, :totalNumberSuccessVends, :totalNumberErrorVends, :numberVendRows)
    end
end

