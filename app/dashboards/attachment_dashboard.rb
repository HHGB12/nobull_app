# app/dashboards/attachment_dashboard.rb

require "administrate/base_dashboard"

class AttachmentDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    name: Field::String,
    record: Field::Polymorphic,
    blob: Field::BelongsTo,
    created_at: Field::DateTime,
  }.freeze

  COLLECTION_ATTRIBUTES = [
    :id,
    :name,
    :record,
    :blob,
    :created_at
  ].freeze

  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :name,
    :record,
    :blob,
    :created_at,
  ].freeze

  FORM_ATTRIBUTES = [
    :name,
  ].freeze

end
