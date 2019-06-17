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

ActiveRecord::Schema.define(version: 2019_06_17_062321) do

  create_table "follows", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "follower_id"
    t.integer "followed_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["followed_id"], name: "index_follows_on_followed_id"
    t.index ["follower_id", "followed_id"], name: "index_follows_on_follower_id_and_followed_id", unique: true
    t.index ["follower_id"], name: "index_follows_on_follower_id"
  end

  create_table "menus", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.decimal "price", precision: 10
    t.time "starttime"
    t.string "endtime"
    t.date "startday"
    t.date "endday"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menus_pitches", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "menu_id", null: false
    t.bigint "pitch_id", null: false
    t.index ["menu_id"], name: "index_menus_pitches_on_menu_id"
    t.index ["pitch_id"], name: "index_menus_pitches_on_pitch_id"
  end

  create_table "pitches", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.bigint "pitchtype_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pitchtype_id"], name: "index_pitches_on_pitchtype_id"
  end

  create_table "pitchtypes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rates", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "comment"
    t.integer "rating"
    t.bigint "sportground_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sportground_id", "user_id"], name: "index_rates_on_sportground_id_and_user_id", unique: true
    t.index ["sportground_id"], name: "index_rates_on_sportground_id"
    t.index ["user_id"], name: "index_rates_on_user_id"
  end

  create_table "schedules", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.date "date"
    t.time "starttime"
    t.time "endtime"
    t.bigint "pitch_id"
    t.bigint "user_id"
    t.bigint "status_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pitch_id"], name: "index_schedules_on_pitch_id"
    t.index ["status_id"], name: "index_schedules_on_status_id"
    t.index ["user_id"], name: "index_schedules_on_user_id"
  end

  create_table "sportgrounds", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "address"
    t.string "name"
    t.string "phone"
    t.time "opentime"
    t.time "closetime"
    t.bigint "sportgroundtype_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sportgroundtype_id"], name: "index_sportgrounds_on_sportgroundtype_id"
    t.index ["user_id"], name: "index_sportgrounds_on_user_id"
  end

  create_table "sportgroundtypes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statuses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "timeframes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.time "starttime"
    t.time "endtime"
    t.bigint "pitch_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "status"
    t.index ["pitch_id"], name: "index_timeframes_on_pitch_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.boolean "provider"
    t.string "peopleid"
    t.string "businesslicense"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "pitches", "pitchtypes"
  add_foreign_key "rates", "sportgrounds"
  add_foreign_key "rates", "users"
  add_foreign_key "schedules", "pitches"
  add_foreign_key "schedules", "statuses"
  add_foreign_key "schedules", "users"
  add_foreign_key "sportgrounds", "sportgroundtypes"
  add_foreign_key "sportgrounds", "users"
  add_foreign_key "timeframes", "pitches"
end