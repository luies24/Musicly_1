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

ActiveRecord::Schema.define(version: 2020_08_18_214052) do

  create_table "artists", force: :cascade do |t|
    t.string "stage_name"
    t.integer "popularity"
    t.boolean "like"
  end

  create_table "playlists", force: :cascade do |t|
    t.boolean "like"
    t.integer "song_id"
    t.integer "artist_id"
    t.index ["artist_id"], name: "index_playlists_on_artist_id"
    t.index ["song_id"], name: "index_playlists_on_song_id"
  end

  create_table "songs", force: :cascade do |t|
    t.string "title"
    t.string "featuring"
    t.integer "popularity"
    t.boolean "like"
  end

end