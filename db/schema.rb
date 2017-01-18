# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160909133935) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "article_translations", force: :cascade do |t|
    t.integer  "article_id", null: false
    t.string   "locale",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "title"
    t.text     "text"
    t.text     "summary"
  end

  add_index "article_translations", ["article_id"], name: "index_article_translations_on_article_id", using: :btree
  add_index "article_translations", ["locale"], name: "index_article_translations_on_locale", using: :btree

  create_table "articles", force: :cascade do |t|
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "asset_file_name"
    t.string   "asset_content_type"
    t.integer  "asset_file_size"
    t.datetime "asset_updated_at"
  end

  create_table "images", force: :cascade do |t|
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "asset_file_name"
    t.string   "asset_content_type"
    t.integer  "asset_file_size"
    t.datetime "asset_updated_at"
    t.integer  "service_id"
    t.integer  "subservice_id"
  end

  add_index "images", ["service_id"], name: "index_images_on_service_id", using: :btree
  add_index "images", ["subservice_id"], name: "index_images_on_subservice_id", using: :btree

  create_table "import_translations", force: :cascade do |t|
    t.integer  "import_id",  null: false
    t.string   "locale",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "title"
    t.text     "text"
  end

  add_index "import_translations", ["import_id"], name: "index_import_translations_on_import_id", using: :btree
  add_index "import_translations", ["locale"], name: "index_import_translations_on_locale", using: :btree

  create_table "imports", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "point_translations", force: :cascade do |t|
    t.integer  "point_id",   null: false
    t.string   "locale",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "text"
  end

  add_index "point_translations", ["locale"], name: "index_point_translations_on_locale", using: :btree
  add_index "point_translations", ["point_id"], name: "index_point_translations_on_point_id", using: :btree

  create_table "points", force: :cascade do |t|
    t.integer  "service_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "subservice_id"
  end

  add_index "points", ["service_id"], name: "index_points_on_service_id", using: :btree
  add_index "points", ["subservice_id"], name: "index_points_on_subservice_id", using: :btree

  create_table "project_translations", force: :cascade do |t|
    t.integer  "project_id", null: false
    t.string   "locale",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "title"
    t.text     "text"
  end

  add_index "project_translations", ["locale"], name: "index_project_translations_on_locale", using: :btree
  add_index "project_translations", ["project_id"], name: "index_project_translations_on_project_id", using: :btree

  create_table "projects", force: :cascade do |t|
    t.boolean  "bigProject"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "asset_file_name"
    t.string   "asset_content_type"
    t.integer  "asset_file_size"
    t.datetime "asset_updated_at"
  end

  create_table "service_translations", force: :cascade do |t|
    t.integer  "service_id", null: false
    t.string   "locale",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "title"
    t.text     "text"
  end

  add_index "service_translations", ["locale"], name: "index_service_translations_on_locale", using: :btree
  add_index "service_translations", ["service_id"], name: "index_service_translations_on_service_id", using: :btree

  create_table "services", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subproject_translations", force: :cascade do |t|
    t.integer  "subproject_id", null: false
    t.string   "locale",        null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "title"
    t.text     "text"
  end

  add_index "subproject_translations", ["locale"], name: "index_subproject_translations_on_locale", using: :btree
  add_index "subproject_translations", ["subproject_id"], name: "index_subproject_translations_on_subproject_id", using: :btree

  create_table "subprojects", force: :cascade do |t|
    t.integer  "project_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.boolean  "bigProject"
    t.string   "asset_file_name"
    t.string   "asset_content_type"
    t.integer  "asset_file_size"
    t.datetime "asset_updated_at"
  end

  add_index "subprojects", ["project_id"], name: "index_subprojects_on_project_id", using: :btree

  create_table "subservice_translations", force: :cascade do |t|
    t.integer  "subservice_id", null: false
    t.string   "locale",        null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "title"
    t.text     "text"
  end

  add_index "subservice_translations", ["locale"], name: "index_subservice_translations_on_locale", using: :btree
  add_index "subservice_translations", ["subservice_id"], name: "index_subservice_translations_on_subservice_id", using: :btree

  create_table "subservices", force: :cascade do |t|
    t.integer  "service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "subservices", ["service_id"], name: "index_subservices_on_service_id", using: :btree

  add_foreign_key "images", "services"
  add_foreign_key "images", "subservices"
  add_foreign_key "points", "services"
  add_foreign_key "points", "subservices"
  add_foreign_key "subprojects", "projects"
  add_foreign_key "subservices", "services"
end
