class UploadsController < ApplicationController

  before_action :set_upload, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, :authorize_record

  # GET /uploads/1
  # GET /uploads/1.json
  def show
  end


  # GET /uploads/1/edit
  def edit
  end

  # PATCH/PUT /uploads/1
  # PATCH/PUT /uploads/1.json
  def update
    respond_to do |format|
      if @upload.update(uploads_params)
        format.html { redirect_to @upload, notice: 'Your Extra Pages were successfully updated.' }
        format.json { render :show, status: :ok, location: @upload }
      else
        format.html { render :edit }
        format.json { render json: @upload.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uploads/1
  # DELETE /uploads/1.json
  def destroy
    @upload.destroy
    respond_to do |format|
      format.html { redirect_to root_url, notice: 'Integration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_upload
      @upload = Upload.find(params[:id])
    end

    def authorize_record
      authorize @upload
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def uploads_params
      params.require(:upload).permit(:user_id, :is_complete, logo_images: [], team_images: [], workspace_images: [], other_images: [] )
    end



end