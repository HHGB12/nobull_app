# app/dashboards/blob_dashboard.rb

require "administrate/base_dashboard"
module ActiveStorage
  class BlobDashboard < Administrate::BaseDashboard
    
    ATTRIBUTE_TYPES = {
      filename: Field::String,
      key: Field::String
    }.freeze

    COLLECTION_ATTRIBUTES = [
      :filename,
      :key
    ].freeze

    SHOW_PAGE_ATTRIBUTES = [
      :filename,
      :key
    ].freeze

    FORM_ATTRIBUTES = [
      :filename,
      :key
    ].freeze

  end
end