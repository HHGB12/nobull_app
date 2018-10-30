class AboutContentsController < ApplicationController
  before_action :set_about_content, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, :authorize_record

  # GET /about_contents/1
  # GET /about_contents/1.json
  def show
  end


  # GET /about_contents/1/edit
  def edit
  end

  

  # PATCH/PUT /about_contents/1
  # PATCH/PUT /about_contents/1.json
  def update
    respond_to do |format|
      if @about_content.update(about_content_params)
        format.html { redirect_to @about_content, notice: 'About content was successfully updated.' }
        format.json { render :show, status: :ok, location: @about_content }
      else
        format.html { render :edit }
        format.json { render json: @about_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /about_contents/1
  # DELETE /about_contents/1.json
  def destroy
    @about_content.destroy
    respond_to do |format|
      format.html { redirect_to about_contents_url, notice: 'About content was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_about_content
      @about_content = AboutContent.find(params[:id])
    end
    def authorize_record
      authorize @about_content
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def about_content_params
      params.require(:about_content).permit(:user_id, :founder, :founded, :about_us, :background_story, :team, :message_from_founder, :other_info, :is_complete)
    end
end
