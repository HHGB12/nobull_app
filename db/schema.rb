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

ActiveRecord::Schema.define(version: 2018_10_24_130027) do

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
    t.index ["founded"], name: "index_about_contents_on_founded"
    t.index ["founder"], name: "index_about_contents_on_founder"
    t.index ["user_id"], name: "index_about_contents_on_user_id"
  end

  create_table "business_details", force: :cascade do |t|
    t.bigint "user_id"
    t.string "business_address"
    t.string "mailing_address"
    t.string "physical_or_mailing"
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
    t.index ["business_address"], name: "index_business_details_on_business_address"
    t.index ["business_email_address"], name: "index_business_details_on_business_email_address"
    t.index ["business_phone"], name: "index_business_details_on_business_phone"
    t.index ["mailing_address"], name: "index_business_details_on_mailing_address"
    t.index ["physical_or_mailing"], name: "index_business_details_on_physical_or_mailing"
    t.index ["user_id"], name: "index_business_details_on_user_id"
  end

  create_table "integrations", force: :cascade do |t|
    t.bigint "user_id"
    t.string "facebook_page_link"
    t.boolean "update_facebook_profile"
    t.string "goolge_business_link"
    t.boolean "update_google_business"
    t.string "twitter_profile_link"
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
    t.index ["user_id"], name: "index_integrations_on_user_id"
  end

  create_table "services_contents", force: :cascade do |t|
    t.bigint "user_id"
    t.text "services"
    t.text "pricing"
    t.text "other_info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_services_contents_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "website_contents", force: :cascade do |t|
    t.bigint "user_id"
    t.string "founder"
    t.string "founded"
    t.text "about_us"
    t.text "background_story"
    t.text "team"
    t.text "services"
    t.text "pricing"
    t.text "message_from_founder"
    t.text "other_info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["founded"], name: "index_website_contents_on_founded"
    t.index ["founder"], name: "index_website_contents_on_founder"
    t.index ["user_id"], name: "index_website_contents_on_user_id"
  end

  create_table "websites", force: :cascade do |t|
    t.bigint "user_id"
    t.string "business_name"
    t.boolean "has_current_website"
    t.string "current_website_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["business_name"], name: "index_websites_on_business_name"
    t.index ["current_website_link"], name: "index_websites_on_current_website_link"
    t.index ["user_id"], name: "index_websites_on_user_id"
  end

  add_foreign_key "about_contents", "users"
  add_foreign_key "business_details", "users"
  add_foreign_key "integrations", "users"
  add_foreign_key "services_contents", "users"
  add_foreign_key "website_contents", "users"
  add_foreign_key "websites", "users"
end
