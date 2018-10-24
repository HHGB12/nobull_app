class WebsiteContentsController < ApplicationController
  before_action :set_website_content, only: [:show, :edit, :update, :destroy]

  # GET /website_contents
  # GET /website_contents.json
  def index
    @website_contents = WebsiteContent.all
  end

  # GET /website_contents/1
  # GET /website_contents/1.json
  def show
  end

  # GET /website_contents/new
  def new
    @website_content = WebsiteContent.new
  end

  # GET /website_contents/1/edit
  def edit
  end

  # POST /website_contents
  # POST /website_contents.json
  def create
    @website_content = WebsiteContent.new(website_content_params)

    respond_to do |format|
      if @website_content.save
        format.html { redirect_to @website_content, notice: 'Website content was successfully created.' }
        format.json { render :show, status: :created, location: @website_content }
      else
        format.html { render :new }
        format.json { render json: @website_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /website_contents/1
  # PATCH/PUT /website_contents/1.json
  def update
    respond_to do |format|
      if @website_content.update(website_content_params)
        format.html { redirect_to @website_content, notice: 'Website content was successfully updated.' }
        format.json { render :show, status: :ok, location: @website_content }
      else
        format.html { render :edit }
        format.json { render json: @website_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /website_contents/1
  # DELETE /website_contents/1.json
  def destroy
    @website_content.destroy
    respond_to do |format|
      format.html { redirect_to website_contents_url, notice: 'Website content was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_website_content
      @website_content = WebsiteContent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def website_content_params
      params.require(:website_content).permit(:user_id, :founder, :founded, :about_us, :background_story, :team, :services, :pricing, :message_from_founder, :other_info)
    end
end
