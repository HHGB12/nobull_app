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

  def pricing
  end

  def basic
  end

  def fancy
  end
  
  def custom
  end

  def why_we_hand_code
  end

  def keep_prices_down
  end
end
