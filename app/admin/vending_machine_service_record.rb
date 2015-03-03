ActiveAdmin.register VendingMachineServiceRecord do
  #Allowed all params for mass update
  controller do
    def permitted_params
      params.permit!
    end
  end

  filter :merchantID
  filter :serviceTime
  filter :serialNumber
  filter :photoTaken
  filter :serviceNotes
  filter :ticketsAdded
  filter :ticketsRedeemed
  filter :ticketsDispensed
  filter :dailyHighScore
  filter :numberOfGamesPlayed
  filter :gameMode
  filter :lightConfiguration
  filter :creditsAdded
  filter :lastScore

  index do
  column :merchantID
  column :serviceTime
  column :serialNumber
  column :photoTaken
  column :serviceNotes
  column :ticketsAdded
  column :ticketsRedeemed
  column :ticketsDispensed
  column :dailyHighScore
  column :numberOfGamesPlayed
  column :gameMode
  column :lightConfiguration
  column :creditsAdded
  column :lastScore
    actions
  end

  form do |f|
    f.inputs "Vending Machine Service Records" do
      f.input :merchantID,            		:label => "Merchant ID"
      f.input :serviceTime,            		:label => "Time Serviced(Unix Epoch)"
      f.input :serialNumber,            	:label => "Serial Number of Machine"
      f.input :photoTaken,          		:label => "Photo Taken"
      f.input :serviceNotes,             	:label => "Notes"
      f.input :ticketsAdded,             	:label => "Number Tickets Added"
      f.input :ticketsRedeemed,             :label => "Number Tickets Redeemed"
      f.input :ticketsDispensed,            :label => "Number Tickets Dispensed"
      f.input :dailyHighScore,             	:label => "Daily High Score"
      f.input :numberOfGamesPlayed,         :label => "Number Games Played"
      f.input :gameMode,             		:label => "Game Mode"
      f.input :lightConfiguration,          :label => "Light Configuration"
      f.input :creditsAdded,             	:label => "Credits Added"
      f.input :lastScore,             		:label => "Last Score"
    end
    f.actions
  end
end
