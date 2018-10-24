require "administrate/base_dashboard"

class WebsiteDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    user: Field::BelongsTo,
    id: Field::Number,
    business_name: Field::String,
    has_current_site: Field::Boolean,
    current_website: Field::String,
    business_address: Field::String,
    mailing_address: Field::String,
    physical_or_mailing: Field::String,
    business_phone: Field::String,
    business_phone2: Field::String,
    business_fax: Field::String,
    business_email_address: Field::String,
    founded: Field::String,
    founder: Field::String,
    about_us: Field::Text,
    services: Field::Text,
    pricing: Field::Text,
    facebook_page_link: Field::String,
    goolge_business_link: Field::String,
    twitter_profile_link: Field::String,
    linkedin_link: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :user,
    :id,
    :business_name,
    :has_current_site,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :user,
    :id,
    :business_name,
    :has_current_site,
    :current_website,
    :business_address,
    :mailing_address,
    :physical_or_mailing,
    :business_phone,
    :business_phone2,
    :business_fax,
    :business_email_address,
    :founded,
    :founder,
    :about_us,
    :services,
    :pricing,
    :facebook_page_link,
    :goolge_business_link,
    :twitter_profile_link,
    :linkedin_link,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :user,
    :business_name,
    :has_current_site,
    :current_website,
    :business_address,
    :mailing_address,
    :physical_or_mailing,
    :business_phone,
    :business_phone2,
    :business_fax,
    :business_email_address,
    :founded,
    :founder,
    :about_us,
    :services,
    :pricing,
    :facebook_page_link,
    :goolge_business_link,
    :twitter_profile_link,
    :linkedin_link,
  ].freeze

  # Overwrite this method to customize how websites are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(website)
  #   "Website ##{website.id}"
  # end
end
