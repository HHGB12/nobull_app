class ExtraPagesController < ApplicationController
  before_action :set_extra_pages, only: [:show, :edit, :update, :destroy, :edit_extra_pages]
  before_action :authenticate_user!, :authorize_record, :injectable_meta#from application_controller

  # GET /extra_pagess/1
  # GET /extra_pagess/1.json
  def show
  end


  # GET /extra_pagess/1/edit
  def edit
  end

  # PATCH/PUT /extra_pagess/1
  # PATCH/PUT /extra_pagess/1.json
  def update
    respond_to do |format|
      if @extra_page.update(extra_pages_params)
        format.html { redirect_to @extra_page, notice: 'Your Extra Pages were successfully updated.' }
        format.json { render :show, status: :ok, location: @extra_page }
      else
        format.html { render :edit }
        format.json { render json: @extra_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /extra_pagess/1
  # DELETE /extra_pagess/1.json
  def destroy
    @extra_page.destroy
    respond_to do |format|
      format.html { redirect_to extra_pages_url, notice: 'Integration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_extra_pages
      @extra_page = ExtraPage.find(params[:id])
    end

    def authorize_record
      authorize @extra_page
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def extra_pages_params
      params.require(:extra_page).permit(:user_id, :is_complete, :extra_page, :extra_page1, :extra_page2, :extra_page3, :extra_page4, :extra_page5, :extra_page6, logo_images: [], team_images: [], workspace_images: [], other_images: [] )
    end
    
end

