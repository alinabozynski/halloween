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

ActiveRecord::Schema.define(version: 2022_10_26_061208) do

  create_table "candies", force: :cascade do |t|
    t.string "name"
    t.integer "chocolate"
    t.integer "fruity"
    t.integer "caramel"
    t.integer "peanuty_almondy"
    t.integer "nougat"
    t.integer "crisped_rice_wafer"
    t.integer "hard"
    t.integer "bar"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.decimal "sugar_percentage"
    t.integer "sugar_id"
    t.index ["sugar_id"], name: "index_candies_on_sugar_id"
  end

  create_table "halloween_movies", force: :cascade do |t|
    t.string "title"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "imdb_horror_movies", force: :cascade do |t|
    t.string "title"
    t.string "release_country"
    t.decimal "rating"
    t.string "run_time"
    t.string "language"
    t.string "release_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "release_date_id"
    t.index ["release_date_id"], name: "index_imdb_horror_movies_on_release_date_id"
  end

  create_table "release_dates", force: :cascade do |t|
    t.string "release_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "imdb_horror_movie_id"
    t.index ["imdb_horror_movie_id"], name: "index_release_dates_on_imdb_horror_movie_id"
  end

  create_table "sugars", force: :cascade do |t|
    t.decimal "sugar_percentage"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "candy_id"
    t.index ["candy_id"], name: "index_sugars_on_candy_id"
  end

  add_foreign_key "candies", "sugars"
  add_foreign_key "imdb_horror_movies", "release_dates"
end
