require "administrate/base_dashboard"

class UserDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    about_content: Field::HasOne,
    business_detail: Field::HasOne,
    integration: Field::HasOne,
    services_content: Field::HasOne,
    extra_page: Field::HasOne,
    upload: Field::HasOne,
    # visits: Field::HasMany.with_options(class_name: "Ahoy::Visit"),
    id: Field::Number,
    email: Field::String,
    encrypted_password: Field::String,
    reset_password_token: Field::String,
    reset_password_sent_at: Field::DateTime,
    remember_created_at: Field::DateTime,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    business_name: Field::String,
    direct_phone_number: Field::String,
    has_current_website: Field::Boolean,
    current_website: Field::String,
    about_contents_complete: Field::Boolean,
    business_details_complete: Field::Boolean,
    integrations_complete: Field::Boolean,
    services_contents_complete: Field::Boolean,
    is_submitted: Field::Boolean,
    name: Field::String,
    admin: Field::Boolean,
    extra_pages_complete: Field::Boolean,
    uploads_complete: Field::Boolean,
    city: Field::String,
    region: Field::String,
    postal_code: Field::String,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :name,
    :email,
    :created_at,
    :business_detail,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    
    # :visits,
    :name,
    :email,
    :created_at,
    :updated_at,
    :business_name,
    :direct_phone_number,
    :has_current_website,
    :current_website,
    # :about_contents_complete,
    # :business_details_complete,
    # :integrations_complete,
    # :services_contents_complete,
    :is_submitted,
    # :admin,
    # :extra_pages_complete,
    # :uploads_complete,
    :city,
    :region,
    :postal_code,
    :about_content,
    :business_detail,
    :integration,
    :services_content,
    :extra_page,
    :upload,
    :id,
    # :encrypted_password,
    # :reset_password_token,
    # :reset_password_sent_at,
    # :remember_created_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :about_content,
    :business_detail,
    :integration,
    :services_content,
    :extra_page,
    :upload,
    # :visits,
    :email,
    :encrypted_password,
    :reset_password_token,
    :reset_password_sent_at,
    :remember_created_at,
    :business_name,
    :direct_phone_number,
    :has_current_website,
    :current_website,
    :about_contents_complete,
    :business_details_complete,
    :integrations_complete,
    :services_contents_complete,
    :is_submitted,
    :name,
    :admin,
    :extra_pages_complete,
    :uploads_complete,
    :city,
    :region,
    :postal_code,
  ].freeze

  # Overwrite this method to customize how users are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(user)
  #   "User ##{user.id}"
  # end
end
