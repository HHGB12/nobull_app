require "administrate/base_dashboard"

class IntegrationDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    user: Field::BelongsTo,
    id: Field::Number,
    facebook_page_link: Field::String,
    update_facebook_profile: Field::Boolean,
    goolge_business_link: Field::String,
    update_google_business: Field::Boolean,
    update_twitter_profile: Field::Boolean,
    twitter_username: Field::String,
    twitter_password: Field::String,
    linkedin_page_link: Field::String,
    update_linkedin_page: Field::Boolean,
    yelp_page_link: Field::String,
    update_yelp_page: Field::Boolean,
    yelp_email_address: Field::String,
    yelp_password: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    is_complete: Field::Boolean,
    shared_google_access: Field::Boolean,
    shared_yelp_access: Field::Boolean,
    shared_facebook_access: Field::Boolean,
    shared_linkedin_access: Field::Boolean,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :user,
    :id,
    :updated_at,
    :is_complete,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :user,
    :id,
    :facebook_page_link,
    :update_facebook_profile,
    :goolge_business_link,
    :update_google_business,
    :update_twitter_profile,
    :twitter_username,
    :twitter_password,
    :linkedin_page_link,
    :update_linkedin_page,
    :yelp_page_link,
    :update_yelp_page,
    :yelp_email_address,
    :yelp_password,
    :created_at,
    :updated_at,
    :is_complete,
    :shared_google_access,
    :shared_yelp_access,
    :shared_facebook_access,
    :shared_linkedin_access,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :user,
    :facebook_page_link,
    :update_facebook_profile,
    :goolge_business_link,
    :update_google_business,
    :update_twitter_profile,
    :twitter_username,
    :twitter_password,
    :linkedin_page_link,
    :update_linkedin_page,
    :yelp_page_link,
    :update_yelp_page,
    :yelp_email_address,
    :yelp_password,
    :is_complete,
    :shared_google_access,
    :shared_yelp_access,
    :shared_facebook_access,
    :shared_linkedin_access,
  ].freeze

  # Overwrite this method to customize how integrations are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(integration)
  #   "Integration ##{integration.id}"
  # end
end
