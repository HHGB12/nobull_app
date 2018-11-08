class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery
  before_action :configure_sanitized_parameters, if: :devise_controller?
  after_action :verify_authorized, unless: :devise_controller?
  def configure_sanitized_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :business_name, :direct_phone_number, :has_current_website, :current_website, :city, :region, :postal_code])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :business_name, :direct_phone_number, :has_current_website, :current_website, :city, :region, :postal_code])
  end
end
