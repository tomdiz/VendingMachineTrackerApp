class CreateVendingMachines < ActiveRecord::Migration
  def change
    create_table :vending_machines do |t|
      t.string :merchantID
      t.string :serialNumber
      t.string :objectName
      t.string :locationName
      t.string :notes
      t.string :machineID
      t.integer :gameMinorVersion
      t.integer :gameMajorVersion
      t.integer :embeddedAuxBoardMinor
      t.integer :embeddedAuxBoardMajor
      t.float :latitude
      t.float :longitude
      t.integer :numberPhotos
      t.integer :lastScore
      t.integer :currentLightConfiguration
      t.integer :currentGameMode
      t.integer :currentCredits
      t.string :machineType
      t.integer :numberGamesPlayed
      t.integer :totalNumberTicketsAdded
      t.integer :totalNumberTicketsRedeemed
      t.integer :totalNumberTicketsPrinted
      t.integer :totalNumberSuccessVends
      t.integer :totalNumberErrorVends
      t.integer :numberVendRows

      t.timestamps null: false
    end
  end
end
