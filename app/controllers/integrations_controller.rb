class IntegrationsController < ApplicationController
  before_action :set_integration, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, :authorize_record, :injectable_meta#from application_controller

  # GET /integrations/1
  # GET /integrations/1.json
  def show
  end


  # GET /integrations/1/edit
  def edit
  end


  # PATCH/PUT /integrations/1
  # PATCH/PUT /integrations/1.json
  def update
    respond_to do |format|
      if @integration.update(integration_params)
        format.html { redirect_to @integration, notice: 'Integration was successfully updated.' }
        format.json { render :show, status: :ok, location: @integration }
      else
        format.html { render :edit }
        format.json { render json: @integration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /integrations/1
  # DELETE /integrations/1.json
  def destroy
    @integration.destroy
    respond_to do |format|
      format.html { redirect_to integrations_url, notice: 'Integration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_integration
      @integration = Integration.find(params[:id])
    end

    def authorize_record
      authorize @integration
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def integration_params
      params.require(:integration).permit(:user_id, :facebook_page_link, :update_facebook_profile, :goolge_business_link, :update_google_business, :twitter_profile_link, :update_twitter_profile, :twitter_username, :twitter_password, :linkedin_page_link, :update_linkedin_page, :yelp_page_link, :update_yelp_page, :yelp_email_address, :yelp_password, :is_complete, :shared_google_access, :shared_yelp_access, :shared_facebook_access, :shared_linkedin_access)
    end
end
