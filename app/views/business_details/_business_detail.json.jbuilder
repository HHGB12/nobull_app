json.extract! business_detail, :id, :user_id, :business_address, :mailing_address, :physical_or_mailing, :other_address_info, :business_phone, :business_phone2, :business_phone3, :business_fax, :business_phone_info, :business_email_address, :business_email_address2, :created_at, :updated_at
json.url business_detail_url(business_detail, format: :json)
