require "administrate/base_dashboard"

class ExtraPageDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    user: Field::BelongsTo,
    id: Field::Number,
    extra_pages: Field::Number,
    extra_page1: Field::Text,
    extra_page2: Field::Text,
    extra_page3: Field::Text,
    extra_page4: Field::Text,
    extra_page5: Field::Text,
    extra_page6: Field::Text,
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
    :extra_pages,
    :extra_page1,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :user,
    :id,
    :extra_pages,
    :extra_page1,
    :extra_page2,
    :extra_page3,
    :extra_page4,
    :extra_page5,
    :extra_page6,
    :created_at,
    :updated_at,
    :is_complete,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :user,
    :extra_pages,
    :extra_page1,
    :extra_page2,
    :extra_page3,
    :extra_page4,
    :extra_page5,
    :extra_page6,
    :is_complete,
  ].freeze

  # Overwrite this method to customize how extra pages are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(extra_page)
  #   "ExtraPage ##{extra_page.id}"
  # end
end
