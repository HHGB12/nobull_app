class PagesController < ApplicationController
  layout "pages_layout", except: :dashboard
  before_action :authenticate_user!, only: :dashboard
  skip_after_action :verify_authorized
  def dashboard
    @user = current_user
  end
  def about
  end

  def index
  end

  def contact
  end

  def reviews
  end

  def custom_projects
  end
end
