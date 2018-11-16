require "administrate/base_dashboard"

class AboutContentDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    user: Field::BelongsTo,
    id: Field::Number,
    founder: Field::String,
    founded: Field::String,
    about_us: Field::Text,
    background_story: Field::Text,
    team: Field::Text,
    message_from_founder: Field::Text,
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
    :founder,
    :founded,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :user,
    :id,
    :founder,
    :founded,
    :about_us,
    :background_story,
    :team,
    :message_from_founder,
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
    :founder,
    :founded,
    :about_us,
    :background_story,
    :team,
    :message_from_founder,
    :other_info,
    :is_complete,
  ].freeze

  # Overwrite this method to customize how about contents are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(about_content)
  #   "AboutContent ##{about_content.id}"
  # end
end
