class ServicesContentsController < ApplicationController
  before_action :set_services_content, only: [:show, :edit, :update, :destroy]

  # GET /services_contents
  # GET /services_contents.json
  def index
    @services_contents = ServicesContent.all
  end

  # GET /services_contents/1
  # GET /services_contents/1.json
  def show
  end

  # GET /services_contents/new
  def new
    @services_content = ServicesContent.new
  end

  # GET /services_contents/1/edit
  def edit
  end

  # POST /services_contents
  # POST /services_contents.json
  def create
    @services_content = ServicesContent.new(services_content_params)

    respond_to do |format|
      if @services_content.save
        format.html { redirect_to @services_content, notice: 'Services content was successfully created.' }
        format.json { render :show, status: :created, location: @services_content }
      else
        format.html { render :new }
        format.json { render json: @services_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /services_contents/1
  # PATCH/PUT /services_contents/1.json
  def update
    respond_to do |format|
      if @services_content.update(services_content_params)
        format.html { redirect_to @services_content, notice: 'Services content was successfully updated.' }
        format.json { render :show, status: :ok, location: @services_content }
      else
        format.html { render :edit }
        format.json { render json: @services_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /services_contents/1
  # DELETE /services_contents/1.json
  def destroy
    @services_content.destroy
    respond_to do |format|
      format.html { redirect_to services_contents_url, notice: 'Services content was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_services_content
      @services_content = ServicesContent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def services_content_params
      params.require(:services_content).permit(:user_id, :services, :pricing, :other_info)
    end
end
