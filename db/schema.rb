# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_03_115409) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contents", force: :cascade do |t|
    t.string "Title"
    t.string "Year"
    t.string "Rated"
    t.string "Released"
    t.string "Runtime"
    t.string "Genre"
    t.string "Director"
    t.string "Writer"
    t.string "Actors"
    t.string "Plot"
    t.string "Language"
    t.string "Country"
    t.string "Awards"
    t.string "Poster"
    t.string "Metascore"
    t.string "imdbRating"
    t.string "imdbVotes"
    t.string "imdbID"
    t.string "Type"
    t.string "DVD"
    t.string "BoxOffice"
    t.string "Production"
    t.string "Website"
    t.string "totalSeasons"
    t.string "Response"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "Ratings", default: [], array: true
  end

  create_table "list_follows", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.integer "list_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_list_follows_on_user_id"
  end

  create_table "list_items", force: :cascade do |t|
    t.bigint "list_id", null: false
    t.bigint "content_id", null: false
    t.string "review"
    t.integer "review_score"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["content_id"], name: "index_list_items_on_content_id"
    t.index ["list_id"], name: "index_list_items_on_list_id"
  end

  create_table "listings", force: :cascade do |t|
    t.bigint "list_id", null: false
    t.bigint "content_id", null: false
    t.string "review"
    t.integer "review_score"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["content_id"], name: "index_listings_on_content_id"
    t.index ["list_id"], name: "index_listings_on_list_id"
  end

  create_table "lists", force: :cascade do |t|
    t.string "list_name"
    t.string "description"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_lists_on_user_id"
  end

  create_table "user_follows", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.integer "following_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_user_follows_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "bio"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "list_follows", "users"
  add_foreign_key "list_items", "contents"
  add_foreign_key "list_items", "lists"
  add_foreign_key "listings", "contents"
  add_foreign_key "listings", "lists"
  add_foreign_key "lists", "users"
  add_foreign_key "user_follows", "users"
end
