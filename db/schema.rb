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

ActiveRecord::Schema.define(version: 20150205024700) do

  create_table "blocked_comments", force: :cascade do |t|
    t.integer  "id_comment"
    t.text     "comment"
    t.datetime "blocked_date"
    t.text     "reason"
    t.string   "user"
    t.string   "ip_user"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "blocked_posts", force: :cascade do |t|
    t.integer  "id_post"
    t.text     "post"
    t.datetime "blocked_date"
    t.text     "reason"
    t.string   "user"
    t.string   "ip_user"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text     "comment"
    t.integer  "id_post"
    t.string   "ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "post"
    t.integer  "comments"
    t.string   "user"
    t.string   "ip_user"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.integer  "profile_code"
    t.string   "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "user"
    t.string   "email"
    t.string   "password"
    t.integer  "profile"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
