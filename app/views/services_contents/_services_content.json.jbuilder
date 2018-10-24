json.extract! services_content, :id, :user_id, :services, :pricing, :other_info, :created_at, :updated_at
json.url services_content_url(services_content, format: :json)
