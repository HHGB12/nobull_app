# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_11_01_130759) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "about_contents", force: :cascade do |t|
    t.bigint "user_id"
    t.string "founder"
    t.string "founded"
    t.text "about_us"
    t.text "background_story"
    t.text "team"
    t.text "message_from_founder"
    t.text "other_info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_complete", default: false, null: false
    t.index ["founded"], name: "index_about_contents_on_founded"
    t.index ["founder"], name: "index_about_contents_on_founder"
    t.index ["user_id"], name: "index_about_contents_on_user_id"
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "business_details", force: :cascade do |t|
    t.bigint "user_id"
    t.string "business_address"
    t.string "mailing_address"
    t.text "other_address_info"
    t.string "business_phone"
    t.string "business_phone2"
    t.string "business_phone3"
    t.string "business_fax"
    t.text "business_phone_info"
    t.string "business_email_address"
    t.string "business_email_address2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_complete", default: false, null: false
    t.string "city"
    t.string "region"
    t.string "postal_code"
    t.index ["business_address"], name: "index_business_details_on_business_address"
    t.index ["business_email_address"], name: "index_business_details_on_business_email_address"
    t.index ["business_phone"], name: "index_business_details_on_business_phone"
    t.index ["mailing_address"], name: "index_business_details_on_mailing_address"
    t.index ["user_id"], name: "index_business_details_on_user_id"
  end

  create_table "extra_pages", force: :cascade do |t|
    t.bigint "user_id"
    t.integer "extra_pages"
    t.text "extra_page1"
    t.text "extra_page2"
    t.text "extra_page3"
    t.text "extra_page4"
    t.text "extra_page5"
    t.text "extra_page6"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_complete", default: true, null: false
    t.index ["is_complete"], name: "index_extra_pages_on_is_complete"
    t.index ["user_id"], name: "index_extra_pages_on_user_id"
  end

  create_table "integrations", force: :cascade do |t|
    t.bigint "user_id"
    t.string "facebook_page_link"
    t.boolean "update_facebook_profile"
    t.string "goolge_business_link"
    t.boolean "update_google_business"
    t.boolean "update_twitter_profile"
    t.string "twitter_username"
    t.string "twitter_password"
    t.string "linkedin_page_link"
    t.boolean "update_linkedin_page"
    t.string "yelp_page_link"
    t.boolean "update_yelp_page"
    t.string "yelp_email_address"
    t.string "yelp_password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_complete", default: false, null: false
    t.boolean "shared_google_access"
    t.boolean "shared_yelp_access"
    t.boolean "shared_facebook_access"
    t.boolean "shared_linkedin_access"
    t.index ["user_id"], name: "index_integrations_on_user_id"
  end

  create_table "services_contents", force: :cascade do |t|
    t.bigint "user_id"
    t.text "services"
    t.text "pricing"
    t.text "other_info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_complete", default: false, null: false
    t.index ["user_id"], name: "index_services_contents_on_user_id"
  end

  create_table "uploads", force: :cascade do |t|
    t.bigint "user_id"
    t.boolean "is_complete"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["is_complete"], name: "index_uploads_on_is_complete"
    t.index ["user_id"], name: "index_uploads_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "business_name"
    t.string "direct_phone_number"
    t.boolean "has_current_website"
    t.string "current_website"
    t.boolean "about_contents_complete", default: false, null: false
    t.boolean "business_details_complete", default: false, null: false
    t.boolean "integrations_complete", default: false, null: false
    t.boolean "services_contents_complete", default: false, null: false
    t.boolean "is_submitted", default: false, null: false
    t.string "name"
    t.boolean "admin", default: false, null: false
    t.boolean "extra_pages_complete", default: false, null: false
    t.boolean "uploads_complete", default: false, null: false
    t.string "city", default: "", null: false
    t.string "region", default: "", null: false
    t.string "postal_code", default: "", null: false
    t.index ["about_contents_complete"], name: "index_users_on_about_contents_complete"
    t.index ["business_details_complete"], name: "index_users_on_business_details_complete"
    t.index ["business_name"], name: "index_users_on_business_name"
    t.index ["city"], name: "index_users_on_city"
    t.index ["current_website"], name: "index_users_on_current_website"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["extra_pages_complete"], name: "index_users_on_extra_pages_complete"
    t.index ["has_current_website"], name: "index_users_on_has_current_website"
    t.index ["integrations_complete"], name: "index_users_on_integrations_complete"
    t.index ["is_submitted"], name: "index_users_on_is_submitted"
    t.index ["name"], name: "index_users_on_name"
    t.index ["postal_code"], name: "index_users_on_postal_code"
    t.index ["region"], name: "index_users_on_region"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["services_contents_complete"], name: "index_users_on_services_contents_complete"
  end

  add_foreign_key "about_contents", "users"
  add_foreign_key "business_details", "users"
  add_foreign_key "extra_pages", "users"
  add_foreign_key "integrations", "users"
  add_foreign_key "services_contents", "users"
  add_foreign_key "uploads", "users"
end
