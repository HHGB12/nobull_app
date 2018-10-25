class BusinessDetailsController < ApplicationController
  before_action :set_business_detail, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /business_details/1
  # GET /business_details/1.json
  def show
  end


  # GET /business_details/1/edit
  def edit
  end


  # PATCH/PUT /business_details/1
  # PATCH/PUT /business_details/1.json
  def update
    respond_to do |format|
      if @business_detail.update(business_detail_params)
        format.html { redirect_to @business_detail, notice: 'Business detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @business_detail }
      else
        format.html { render :edit }
        format.json { render json: @business_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /business_details/1
  # DELETE /business_details/1.json
  def destroy
    @business_detail.destroy
    respond_to do |format|
      format.html { redirect_to business_details_url, notice: 'Business detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_business_detail
      @business_detail = BusinessDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def business_detail_params
      params.require(:business_detail).permit(:user_id, :business_address, :mailing_address, :physical_or_mailing, :other_address_info, :business_phone, :business_phone2, :business_phone3, :business_fax, :business_phone_info, :business_email_address, :business_email_address2, :is_complete)
    end
end
