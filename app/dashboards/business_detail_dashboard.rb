require "administrate/base_dashboard"

class BusinessDetailDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    user: Field::BelongsTo,
    id: Field::Number,
    business_address: Field::Text,
    mailing_address: Field::Text,
    other_address_info: Field::Text,
    business_phone: Field::String,
    business_phone2: Field::String,
    business_phone3: Field::String,
    business_fax: Field::String,
    business_phone_info: Field::Text,
    business_email_address: Field::String,
    business_email_address2: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    is_complete: Field::Boolean,
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
    :business_address,
    :mailing_address,
    :other_address_info,
    :business_phone,
    :business_phone2,
    :business_phone3,
    :business_fax,
    :business_phone_info,
    :business_email_address,
    :business_email_address2,
    :created_at,
    :updated_at,
    :is_complete,
    :city,
    :region,
    :postal_code,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :user,
    :business_address,
    :mailing_address,
    :other_address_info,
    :business_phone,
    :business_phone2,
    :business_phone3,
    :business_fax,
    :business_phone_info,
    :business_email_address,
    :business_email_address2,
    :is_complete,
    :city,
    :region,
    :postal_code,
  ].freeze

  # Overwrite this method to customize how business details are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(business_detail)
  #   "BusinessDetail ##{business_detail.id}"
  # end
end
