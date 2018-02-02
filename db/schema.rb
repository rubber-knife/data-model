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

ActiveRecord::Schema.define(version: 20180202042351) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "images", force: :cascade do |t|
    t.bigint "medium_id"
    t.string "upload_uid"
    t.string "upload_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["medium_id"], name: "index_images_on_medium_id"
  end

  create_table "media", force: :cascade do |t|
    t.bigint "submission_id"
    t.string "title"
    t.integer "kind"
    t.text "text"
    t.string "medium"
    t.string "materials_used"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["submission_id"], name: "index_media_on_submission_id"
  end

  create_table "meta", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "submission_id"
    t.boolean "read"
    t.integer "evaluation", default: 0
    t.datetime "last_edited"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["submission_id"], name: "index_meta_on_submission_id"
    t.index ["user_id"], name: "index_meta_on_user_id"
  end

  create_table "submissions", force: :cascade do |t|
    t.string "title"
    t.integer "status", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.integer "role", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "images", "media"
  add_foreign_key "media", "submissions"
  add_foreign_key "meta", "submissions"
  add_foreign_key "meta", "users"
end
