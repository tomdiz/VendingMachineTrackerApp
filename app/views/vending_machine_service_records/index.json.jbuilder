json.array!(@vending_machine_service_records) do |vending_machine_service_record|
  json.extract! vending_machine_service_record, :id, :merchantID, :serviceTime, :serialNumber, :photoTaken, :serviceNotes, :ticketsAdded, :ticketsRedeemed, :ticketsDispensed, :dailyHighScore, :numberOfGamesPlayed, :gameMode, :lightConfiguration, :creditsAdded, :lastScore
  json.url vending_machine_service_record_url(vending_machine_service_record, format: :json)
end
