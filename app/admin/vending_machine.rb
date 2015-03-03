ActiveAdmin.register VendingMachine do
  #Allowed all params for mass update
  controller do
    def permitted_params
      params.permit!
    end
  end

  filter :merchantID
  filter :serialNumber
  filter :objectName
  filter :locationName
  filter :notes
  filter :machineID
  filter :gameMinorVersion
  filter :gameMajorVersion
  filter :embeddedAuxBoardMinor
  filter :embeddedAuxBoardMajor
  filter :latitude
  filter :longitude
  filter :numberPhotos
  filter :lastScore
  filter :currentLightConfiguration
  filter :currentGameMode
  filter :currentCredits
  filter :machineType
  filter :numberGamesPlayed
  filter :totalNumberTicketsAdded
  filter :totalNumberTicketsRedeemed
  filter :totalNumberTicketsPrinted
  filter :totalNumberSuccessVends
  filter :totalNumberErrorVends
  filter :numberVendRows

  index do
  column :merchantID
  column :serialNumber
  column :objectName
  column :locationName
  column :notes
  column :machineID
  column :gameMinorVersion
  column :gameMajorVersion
  column :embeddedAuxBoardMinor
  column :embeddedAuxBoardMajor
  column :latitude
  column :longitude
  column :numberPhotos
  column :lastScore
  column :currentLightConfiguration
  column :currentGameMode
  column :currentCredits
  column :machineType
  column :numberGamesPlayed
  column :totalNumberTicketsAdded
  column :totalNumberTicketsRedeemed
  column :totalNumberTicketsPrinted
  column :totalNumberSuccessVends
  column :totalNumberErrorVends
  column :numberVendRows
    actions
  end

  form do |f|
    f.inputs "Vending Machines" do
      f.input :merchantID,            		:label => "Merchant ID"
      f.input :serialNumber,            	:label => "Serial Number of Machine"
      f.input :objectName,          		:label => "Machine Name"
      f.input :locationName,          		:label => "Location"
      f.input :notes,             			:label => "Notes"
      f.input :machineID,             		:label => "Machine ID"
      f.input :gameMinorVersion,            :label => "Game Minor Version"
      f.input :gameMajorVersion,            :label => "Game Major Version"
      f.input :embeddedAuxBoardMinor,       :label => "Aux Board Minor"
      f.input :embeddedAuxBoardMajor,       :label => "Aux Board Major"
      f.input :latitude,             		:label => "Latitude"
      f.input :longitude,             		:label => "Longitude"
      f.input :numberPhotos,             	:label => "Number Photos"
      f.input :lastScore,             		:label => "Last Score"
      f.input :currentLightConfiguration,   :label => "Currrent Light Config"
      f.input :currentGameMode,            	:label => "Current Game Mode"
      f.input :currentCredits,             	:label => "Current Number Credits"
      f.input :machineType,             	:label => "Machine Type"
      f.input :numberGamesPlayed,           :label => "Number Games Played"
      f.input :totalNumberTicketsAdded,     :label => "Total Tickets Added"
      f.input :totalNumberTicketsRedeemed,  :label => "Total Tickets Redeemed"
      f.input :totalNumberTicketsPrinted,   :label => "Total Tickets Printed"
      f.input :totalNumberSuccessVends,     :label => "Successful Vends"
      f.input :totalNumberErrorVends,       :label => "Error Vends"
      f.input :numberVendRows,             	:label => "Number of Vending Rows"
    end
    f.actions
  end
end
