# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_01_26_205433) do

  create_table "categories", force: :cascade do |t|
    t.integer "user_id"
    t.string "category_01"
    t.string "category_02"
    t.string "category_03"
    t.string "category_04"
    t.string "category_05"
    t.string "category_06"
    t.string "category_07"
    t.string "category_08"
    t.string "category_09"
    t.string "category_10"
    t.string "category_11"
    t.string "category_12"
    t.string "category_13"
    t.string "category_14"
    t.string "category_15"
    t.string "category_16"
    t.string "category_17"
    t.string "category_18"
    t.string "category_19"
    t.string "category_20"
    t.string "category_21"
    t.string "category_22"
    t.string "category_23"
    t.string "category_24"
    t.string "category_25"
    t.string "category_26"
    t.string "category_27"
    t.string "category_28"
    t.string "category_29"
    t.string "category_30"
    t.string "category_31"
    t.string "category_32"
    t.string "category_33"
    t.string "category_34"
    t.string "category_35"
    t.string "category_36"
    t.string "category_37"
    t.string "category_38"
    t.string "category_39"
    t.string "category_40"
    t.string "category_41"
    t.string "category_42"
    t.string "category_43"
    t.string "category_44"
    t.string "category_45"
    t.string "category_46"
    t.string "category_47"
    t.string "category_48"
    t.string "category_49"
    t.string "category_50"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_type", "sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_type_and_sluggable_id"
  end

  create_table "impressions", force: :cascade do |t|
    t.string "impressionable_type"
    t.integer "impressionable_id"
    t.integer "user_id"
    t.string "controller_name"
    t.string "action_name"
    t.string "view_name"
    t.string "request_hash"
    t.string "ip_address"
    t.string "session_hash"
    t.text "message"
    t.text "referrer"
    t.text "params"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["controller_name", "action_name", "ip_address"], name: "controlleraction_ip_index"
    t.index ["controller_name", "action_name", "request_hash"], name: "controlleraction_request_index"
    t.index ["controller_name", "action_name", "session_hash"], name: "controlleraction_session_index"
    t.index ["impressionable_type", "impressionable_id", "ip_address"], name: "poly_ip_index"
    t.index ["impressionable_type", "impressionable_id", "params"], name: "poly_params_request_index"
    t.index ["impressionable_type", "impressionable_id", "request_hash"], name: "poly_request_index"
    t.index ["impressionable_type", "impressionable_id", "session_hash"], name: "poly_session_index"
    t.index ["impressionable_type", "message", "impressionable_id"], name: "impressionable_type_message_index"
    t.index ["user_id"], name: "index_impressions_on_user_id"
  end

  create_table "promocodes", force: :cascade do |t|
    t.integer "user_id"
    t.string "code_title"
    t.string "code_link"
    t.string "code_image"
    t.string "code_source"
    t.string "code_video"
    t.string "code_hashtag"
    t.string "code_rating"
    t.string "code_review_count"
    t.float "code_icode_price"
    t.float "code_wacode_price"
    t.float "code_pct"
    t.text "code_description"
    t.string "code_spare_01"
    t.string "code_spare_02"
    t.string "code_spare_03"
    t.string "code_spare_04"
    t.string "code_spare_05"
    t.string "code_spare_06"
    t.string "code_spare_07"
    t.string "code_spare_08"
    t.string "code_spare_09"
    t.string "code_spare_10"
    t.string "code_spare_11"
    t.string "code_spare_12"
    t.string "code_spare_13"
    t.string "code_spare_14"
    t.string "code_spare_15"
    t.string "code_spare_16"
    t.string "code_spare_17"
    t.string "code_spare_18"
    t.string "code_spare_19"
    t.string "code_spare_20"
    t.text "code_spare_31"
    t.text "code_spare_32"
    t.text "code_spare_33"
    t.text "code_spare_34"
    t.text "code_spare_35"
    t.float "code_spare_41"
    t.float "code_spare_42"
    t.float "code_spare_43"
    t.float "code_spare_44"
    t.float "code_spare_45"
    t.float "code_spare_46"
    t.float "code_spare_47"
    t.float "code_spare_48"
    t.float "code_spare_49"
    t.float "code_spare_50"
    t.integer "code_spare_56"
    t.integer "code_spare_57"
    t.integer "code_spare_58"
    t.integer "code_spare_59"
    t.integer "code_spare_60"
    t.decimal "code_spare_61"
    t.decimal "code_spare_62"
    t.decimal "code_spare_63"
    t.decimal "code_spare_64"
    t.decimal "code_spare_65"
    t.datetime "code_spare_66"
    t.datetime "code_spare_67"
    t.datetime "code_spare_68"
    t.datetime "code_spare_69"
    t.datetime "code_spare_70"
    t.date "code_spare_71"
    t.date "code_spare_72"
    t.date "code_spare_73"
    t.date "code_spare_74"
    t.date "code_spare_75"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "slug"
    t.index ["slug"], name: "index_promocodes_on_slug", unique: true
  end

  create_table "promocodes_tags", id: false, force: :cascade do |t|
    t.integer "promocode_id"
    t.integer "tag_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["promocode_id"], name: "index_promocodes_tags_on_promocode_id"
    t.index ["tag_id"], name: "index_promocodes_tags_on_tag_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "promocodes_tags", "promocodes"
  add_foreign_key "promocodes_tags", "tags"
end
