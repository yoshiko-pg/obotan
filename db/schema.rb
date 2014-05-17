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

ActiveRecord::Schema.define(version: 20140517042953) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "categories", ["user_id", "name"], name: "index_categories_on_user_id_and_name", unique: true, using: :btree

  create_table "users", force: true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "user_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["provider", "uid"], name: "index_users_on_provider_and_uid", unique: true, using: :btree

  create_table "words", force: true do |t|
    t.integer  "user_id"
    t.integer  "category_id"
    t.string   "word"
    t.string   "mean"
    t.integer  "remember_count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "words", ["user_id", "category_id", "mean"], name: "index_words_on_user_id_and_category_id_and_mean", unique: true, using: :btree
  add_index "words", ["user_id", "category_id", "word"], name: "index_words_on_user_id_and_category_id_and_word", unique: true, using: :btree

end
