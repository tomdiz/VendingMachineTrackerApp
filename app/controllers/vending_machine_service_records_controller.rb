class VendingMachineServiceRecordsController < InheritedResources::Base
  skip_before_filter  :verify_authenticity_token

  # GET /vending_machine_service_records
  # GET /vending_machine_service_records.json
  def index
   	Rails.logger.debug { "Getting Vending Machine Records..." }

    @records = VendingMachineServiceRecord.all
  end

  # POST /vending_machine_service_records
  # POST /vending_machine_service_records.json
  def create
  
   	Rails.logger.debug { "Creating Vending Machine Record..." }

    @record = VendingMachineServiceRecord.new(vending_machine_service_record_params)

    respond_to do |format|
      if @record.save
        format.html { redirect_to @record, notice: 'Vending Machine Record was successfully created.' }
        format.json { render :show, status: :created, record: @record }
      else
        format.html { render :new }
        format.json { render json: @record.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def vending_machine_service_record_params
      params.permit(:merchantID, :serviceTime, :serialNumber, :photoTaken, :serviceNotes, :ticketsAdded, :ticketsRedeemed, :ticketsDispensed, :dailyHighScore, :numberOfGamesPlayed, :gameMode, :lightConfiguration, :creditsAdded, :lastScore)
    end
end

