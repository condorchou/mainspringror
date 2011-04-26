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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110425214109) do

  create_table "clients", :force => true do |t|
    t.string   "company_name"
    t.text     "remarks"
    t.string   "intranet"
    t.string   "botr_player_key"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "token"
    t.string   "tab_content_asset"
    t.text     "css"
  end

  create_table "comments", :force => true do |t|
    t.integer  "video_id"
    t.integer  "user_id"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "content_assets", :force => true do |t|
    t.string   "handle"
    t.integer  "client_id"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ratings", :force => true do |t|
    t.integer  "rateable_id"
    t.string   "rateable_type"
    t.float    "average_rating"
    t.integer  "ratings_count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ratings", ["rateable_id", "rateable_type"], :name => "index_ratings_on_rateable_id_and_rateable_type"

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type"], :name => "index_taggings_on_taggable_id_and_taggable_type"

  create_table "tags", :force => true do |t|
    t.string "name"
  end

  create_table "user_ratings", :force => true do |t|
    t.integer  "rating_id"
    t.integer  "user_id"
    t.integer  "score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_ratings", ["user_id", "rating_id"], :name => "index_user_ratings_on_user_id_and_rating_id"

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "location"
    t.integer  "client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password"
    t.string   "role",       :default => "intranet_user"
  end

  create_table "video_likings", :force => true do |t|
    t.integer  "video_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "videos", :force => true do |t|
    t.text     "title"
    t.string   "location"
    t.text     "description"
    t.integer  "season"
    t.integer  "episode"
    t.string   "label"
    t.text     "participants"
    t.datetime "release_date"
    t.boolean  "approved"
    t.string   "botr_video_key"
    t.integer  "views"
    t.integer  "client_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cached_tag_list"
    t.string   "tab_highlight"
  end

end
