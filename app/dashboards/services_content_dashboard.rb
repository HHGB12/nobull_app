require "administrate/base_dashboard"

class ServicesContentDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    user: Field::BelongsTo,
    id: Field::Number,
    services: Field::Text,
    pricing: Field::Text,
    other_info: Field::Text,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    is_complete: Field::Boolean,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :user,
    :id,
    :is_complete,
    :updated_at,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :user,
    :id,
    :services,
    :pricing,
    :other_info,
    :created_at,
    :updated_at,
    :is_complete,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :user,
    :services,
    :pricing,
    :updated_at,
    :is_complete,
  ].freeze

  # Overwrite this method to customize how services contents are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(services_content)
  #   "ServicesContent ##{services_content.id}"
  # end
end
