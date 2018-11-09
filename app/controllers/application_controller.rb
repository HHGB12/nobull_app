class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery
  before_action :configure_sanitized_parameters, if: :devise_controller?
  after_action :verify_authorized, unless: :devise_controller?
  def configure_sanitized_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :business_name, :direct_phone_number, :has_current_website, :current_website, :city, :region, :postal_code])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :business_name, :direct_phone_number, :has_current_website, :current_website, :city, :region, :postal_code])
  end


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
end
