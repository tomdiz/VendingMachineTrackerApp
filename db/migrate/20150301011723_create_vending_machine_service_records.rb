class CreateVendingMachineServiceRecords < ActiveRecord::Migration
  def change
    create_table :vending_machine_service_records do |t|
      t.string :merchantID
      t.integer :serviceTime
      t.string :serialNumber
      t.integer :photoTaken
      t.string :serviceNotes
      t.integer :ticketsAdded
      t.integer :ticketsRedeemed
      t.integer :ticketsDispensed
      t.integer :dailyHighScore
      t.integer :numberOfGamesPlayed
      t.string :gameMode
      t.integer :lightConfiguration
      t.integer :creditsAdded
      t.integer :lastScore

      t.timestamps null: false
    end
  end
end
