class UsersController < ApplicationController
  before_action :set_user, only: [:update, :destroy]
  before_action :authenticate_user!
  # GET /business_details/1/edit
  def edit
  end


  # PATCH/PUT /business_details/1
  # PATCH/PUT /business_details/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to root_path, notice: 'User was successfully updated.' }
      else
        format.html { render :edit }
        format.json { render json: @business_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /business_details/1
  # DELETE /business_details/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'User  was successfully destroyed.' }
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
      params.require(:user).permit(:business_name, :personal_phone_number, :has_current_website, :current_website, :business_details_complete, :integrations_complete, :services_contents_complete, :is_submitted)
    end
end
