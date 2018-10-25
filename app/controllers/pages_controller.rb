class PagesController < ApplicationController
  layout "pages_layout", except: :dashboard
  before_action :authenticate_user!, only: :dashboard
  def dashboard
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
