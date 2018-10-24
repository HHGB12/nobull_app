class AboutContentsController < ApplicationController
  before_action :set_about_content, only: [:show, :edit, :update, :destroy]

  # GET /about_contents
  # GET /about_contents.json
  def index
    @about_contents = AboutContent.all
  end

  # GET /about_contents/1
  # GET /about_contents/1.json
  def show
  end

  # GET /about_contents/new
  def new
    @about_content = AboutContent.new
  end

  # GET /about_contents/1/edit
  def edit
  end

  # POST /about_contents
  # POST /about_contents.json
  def create
    @about_content = AboutContent.new(about_content_params)

    respond_to do |format|
      if @about_content.save
        format.html { redirect_to @about_content, notice: 'About content was successfully created.' }
        format.json { render :show, status: :created, location: @about_content }
      else
        format.html { render :new }
        format.json { render json: @about_content.errors, status: :unprocessable_entity }
      end
    end
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

    # Never trust parameters from the scary internet, only allow the white list through.
    def about_content_params
      params.require(:about_content).permit(:user_id, :founder, :founded, :about_us, :background_story, :team, :message_from_founder, :other_info)
    end
end
