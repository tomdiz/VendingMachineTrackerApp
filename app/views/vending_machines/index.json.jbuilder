json.array!(@vending_machines) do |vending_machine|
  json.extract! vending_machine, :id, :merchantID, :serialNumber, :objectName, :locationName, :notes, :machineID, :gameMinorVersion, :gameMajorVersion, :embeddedAuxBoardMinor, :embeddedAuxBoardMajor, :latitude, :longitude, :numberPhotos, :lastScore, :currentLightConfiguration, :currentGameMode, :currentCredits, :machineType, :numberGamesPlayed, :totalNumberTicketsAdded, :totalNumberTicketsRedeemed, :totalNumberTicketsPrinted, :totalNumberSuccessVends, :totalNumberErrorVends, :numberVendRows
  json.url vending_machine_url(vending_machine, format: :json)
end
