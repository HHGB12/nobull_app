require "administrate/base_dashboard"

class UploadDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    user: Field::BelongsTo,
    logo_images_attachments: Field::HasMany.with_options(class_name: "ActiveStorage::Attachment"),
    logo_images_blobs: Field::HasMany.with_options(class_name: "ActiveStorage::Blob"),
    team_images_attachments: Field::HasMany.with_options(class_name: "ActiveStorage::Attachment"),
    team_images_blobs: Field::HasMany.with_options(class_name: "ActiveStorage::Blob"),
    workspace_images_attachments: Field::HasMany.with_options(class_name: "ActiveStorage::Attachment"),
    workspace_images_blobs: Field::HasMany.with_options(class_name: "ActiveStorage::Blob"),
    other_images_attachments: Field::HasMany.with_options(class_name: "ActiveStorage::Attachment"),
    other_images_blobs: Field::HasMany.with_options(class_name: "ActiveStorage::Blob"),
    id: Field::Number,
    is_complete: Field::Boolean,
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
    :updated_at,
    :is_complete,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :user,
    :logo_images_attachments,
    :logo_images_blobs,
    :team_images_attachments,
    :team_images_blobs,
    :workspace_images_attachments,
    :workspace_images_blobs,
    :other_images_attachments,
    :other_images_blobs,
    :logo_images_attachments,
    :team_images_attachments,
    :workspace_images_attachments,
    :other_images_attachments,
    :id,
    :is_complete,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :user,
    # :logo_images_attachments,
    # :logo_images_blobs,
    # :team_images_attachments,
    # :team_images_blobs,
    # :workspace_images_attachments,
    # :workspace_images_blobs,
    # :other_images_attachments,
    :other_images_blobs,
    :is_complete,
  ].freeze

  # Overwrite this method to customize how uploads are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(upload)
  #   "Upload ##{upload.id}"
  # end
  # permitted for has_many_attached
  def permitted_attributes
    super + [:logo_images_attachments => []]
  #   super + [:team_images_attachments => []]
  #   super + [:workspace_images_attachments => []]
  #   super + [:other_images_attachments => []]
  end
end
