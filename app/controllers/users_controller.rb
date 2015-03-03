require 'uuidtools'

class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  skip_before_filter  :verify_authenticity_token

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
  
    @phone = params[:phone]
    @company = params[:company]
   	Rails.logger.debug { "phone = " }
   	Rails.logger.debug { @phone }
   	Rails.logger.debug { "company = " }
   	Rails.logger.debug { @company }

	userExists = User.exists?(:phone => @phone)
    if (userExists == true)

        Rails.logger.info {"USER FOUND!"}
        @userInfo = User.where("phone = ?", @phone)
        if (@userInfo == nil)
	        Rails.logger.info {"userInfo is nil!"}
	    end
		respond_to do |format|
			format.json { render :json => { :merchantID=> @userInfo[0].merchantID } }
		end
		return
    else

   		Rails.logger.debug { "Creating new user..." }

	    @user = User.new

    	@merchantId = Base64.encode64(UUIDTools::UUID.random_create)[0..31]
		@user.merchantID = @merchantId;
		@user.companyName = @company;
		@user.phone = @phone;
	
		Rails.logger.debug {"@merchantId = "}
   		Rails.logger.debug { @merchantId }

    	respond_to do |format|
      		if @user.save
        		format.html { redirect_to @user, notice: 'User was successfully created.' }
        		format.json { render :show, status: :created, merchantId: @merchantId, location: @user }
      		else
        		format.html { render :new }
        		format.json { render json: @user.errors, status: :unprocessable_entity }
     		end
     	end
	end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:merchantID, :companyName, :phone)
    end
end
