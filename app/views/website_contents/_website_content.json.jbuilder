json.extract! website_content, :id, :user_id, :founder, :founded, :about_us, :background_story, :team, :services, :pricing, :message_from_founder, :other_info, :created_at, :updated_at
json.url website_content_url(website_content, format: :json)
