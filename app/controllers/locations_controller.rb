class LocationsController < InheritedResources::Base
  skip_before_filter  :verify_authenticity_token

  # GET /locations
  # GET /locations.json
  def index
   	Rails.logger.debug { "Getting All Locations..." }

    @locations = Location.all
    #respond_to do |format|
    #    format.html { redirect_to @locations, notice: 'Locations successful.' }
    #    format.json { render :show, locations: @locations }
    #end
  end

  # POST /locations
  # POST /locations.json
  def create
  
   	Rails.logger.debug { "Creating New Location..." }

    @location = Location.new(location_params)

    respond_to do |format|
      if @location.save
        format.html { redirect_to @location, notice: 'Location was successfully created.' }
        format.json { render :show, status: :created, location: @location }
      else
        format.html { render :new }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def location_params
      params.permit(:locationName, :notes, :latitude, :longitude, :merchantId)
    end
    
end

