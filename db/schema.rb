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

ActiveRecord::Schema.define(version: 2019_10_22_194151) do

  create_table "battles", force: :cascade do |t|
    t.integer "team_id"
    t.integer "opponent_id"
    t.integer "winner_id"
  end

  create_table "drafts", force: :cascade do |t|
    t.integer "team_id"
    t.integer "fighter_id"
  end

  create_table "fighters", force: :cascade do |t|
    t.string "name"
    t.integer "intelligence"
    t.integer "strength"
    t.integer "speed"
    t.integer "durability"
    t.integer "power"
    t.integer "combat"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.integer "player_id"
    t.boolean "last_team"
  end

end
