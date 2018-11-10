class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery
  before_action :configure_sanitized_parameters, if: :devise_controller?
  before_action :set_locale
  after_action :verify_authorized, unless: :devise_controller?
  after_action :track_action
  

  # Used to set meta data in headers.
  def injectable_meta 
    set_meta_tags title: "#{controller_name.humanize.titleize + ' - ' + action_name.capitalize}",
                  description: 'NoBull Software Co.\'s NoBull Website Ordering Thingy™!👋' ,
                  keywords: 'webapp, web site development, business information',
                  index: false,
                  nofollow: true,
                  icon: [
                    { href: "#{ActionController::Base.helpers.asset_path('favicon.ico')}"},
                    { href: "#{ActionController::Base.helpers.asset_path('favicon-96x96.png')}", sizes: '32x32 96x96', type: 'image/png' },
                    { href: "#{ActionController::Base.helpers.asset_path('apple-icon.png')}", rel: 'apple-touch-icon-precomposed', sizes: '32x32', type: 'image/png' },
                  ]
  end

 
  
  # def get_location_detected_locale
  #   location = request.location
  #   return nil unless location.present? && location.country_code.present? && I18n.available_locales.include?(location.country_code)
  #   location.country_code.include?("-") ? location.country_code : location.country_code.downcase
  # end

  protected

  def configure_sanitized_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :business_name, :direct_phone_number, :has_current_website, :current_website, :city, :region, :postal_code])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :business_name, :direct_phone_number, :has_current_website, :current_website, :city, :region, :postal_code])
  end
  def track_action
    ahoy.track "Ran action", request.path_parameters
  end


  def set_locale
    # explicit param can always override existing setting
    # otherwise, make sure to allow a user preference to override any automatic detection
    # then detect by location, and header
    # if all else fails, fall back to default

    I18n.locale = params[:locale] || session[:locale] || location_detected_locale
    session[:locale] = I18n.locale
  end

  def location_detected_locale
    location = request.location
    if location.present? && location.country_code.present? && location.country_code == "GB"
      location.country_code.downcase
    elsif location.present? && location.region.present? && location.region == "British Columbia"
      location.region.downcase.split.join('_')
    elsif location.present? && location.region.present? && location.region == "Alberta"
      location.region.downcase
    else 
      I18n.default_locale
    end
  end
end
