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

ActiveRecord::Schema.define(version: 2022_05_20_163538) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "action_text_rich_texts", force: :cascade do |t|
    t.string "name", null: false
    t.text "body"
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", precision: 6, null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "intro"
    t.boolean "published"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "embeds", force: :cascade do |t|
    t.string "url"
    t.boolean "video"
    t.text "html"
    t.string "thumbnail_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "fields", force: :cascade do |t|
    t.string "name"
    t.bigint "fieldable_id"
    t.string "fieldable_type"
    t.string "ancestry"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ancestry"], name: "index_fields_on_ancestry"
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at", precision: 6
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_type", "sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_type_and_sluggable_id"
  end

  create_table "medias", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "menuitems", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "ancestry"
    t.integer "ancestry_depth", default: 0
    t.integer "children_count", default: 0
    t.bigint "menu_id"
    t.integer "position"
    t.integer "menuitemable_id"
    t.string "menuitemable_type"
    t.string "link"
    t.index ["ancestry"], name: "index_menuitems_on_ancestry"
    t.index ["menu_id"], name: "index_menuitems_on_menu_id"
    t.index ["menuitemable_type", "menuitemable_id"], name: "index_menuitems_on_menuitemable_type_and_menuitemable_id"
  end

  create_table "menus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pages", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "keywords"
    t.string "slug"
    t.integer "position"
    t.integer "parent_id"
    t.string "template"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "ancestry"
    t.integer "ancestry_depth", default: 0
    t.integer "children_count", default: 0
    t.jsonb "custom_content", default: {}, null: false
    t.index ["ancestry"], name: "index_pages_on_ancestry"
    t.index ["slug"], name: "index_pages_on_slug", unique: true
  end

  create_table "sites", force: :cascade do |t|
    t.string "name"
    t.boolean "live"
    t.string "keywords"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "textfields", force: :cascade do |t|
    t.string "default"
    t.string "placeholder"
    t.boolean "required", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "userform_fields", force: :cascade do |t|
    t.string "field_type"
    t.string "name"
    t.string "hint"
    t.string "default"
    t.string "placeholder"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "userform_id"
    t.integer "position"
    t.integer "fieldable_id"
    t.string "fieldable_type"
    t.index ["fieldable_type", "fieldable_id"], name: "index_userform_fields_on_fieldable_type_and_fieldable_id"
    t.index ["userform_id"], name: "index_userform_fields_on_userform_id"
  end

  create_table "userform_submissions", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "userform_id"
    t.index ["userform_id"], name: "index_userform_submissions_on_userform_id"
  end

  create_table "userforms", force: :cascade do |t|
    t.string "name"
    t.text "user_notification"
    t.text "admin_notification"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: 6
    t.datetime "remember_created_at", precision: 6
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "menuitems", "menus"
  add_foreign_key "userform_fields", "userforms"
  add_foreign_key "userform_submissions", "userforms"
end
