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

ActiveRecord::Schema.define(version: 20171124042558) do

  create_table "achievements", force: :cascade do |t|
    t.integer "number"
    t.text "title"
    t.text "explain"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "alledits", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "atmtresults", force: :cascade do |t|
    t.integer "atmtTaskResult", default: 0
    t.integer "member_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_id", "created_at"], name: "index_atmtresults_on_member_id_and_created_at"
    t.index ["member_id"], name: "index_atmtresults_on_member_id"
  end

  create_table "clickresults", force: :cascade do |t|
    t.integer "clickTaskResult", default: 0
    t.integer "member_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_id", "created_at"], name: "index_clickresults_on_member_id_and_created_at"
    t.index ["member_id"], name: "index_clickresults_on_member_id"
  end

  create_table "mathresults", force: :cascade do |t|
    t.integer "mathTaskResult", default: 0
    t.integer "member_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_id", "created_at"], name: "index_mathresults_on_member_id_and_created_at"
    t.index ["member_id"], name: "index_mathresults_on_member_id"
  end

  create_table "member_achieves", force: :cascade do |t|
    t.integer "member_id"
    t.integer "achievement_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["achievement_id"], name: "index_member_achieves_on_achievement_id"
    t.index ["member_id"], name: "index_member_achieves_on_member_id"
  end

  create_table "members", force: :cascade do |t|
    t.string "fullname", null: false
    t.string "name", null: false
    t.string "email", null: false
    t.integer "gender", default: 0, null: false
    t.date "birthday"
    t.boolean "administrator", default: false, null: false
    t.string "passname", null: false
    t.string "password_digest"
    t.integer "tasktype", default: 0, null: false
    t.integer "gametype", default: 0, null: false
    t.integer "membertype", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sumscores", force: :cascade do |t|
    t.integer "member_id"
    t.integer "atmt", default: 0
    t.integer "math", default: 0
    t.integer "click", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_id", "created_at"], name: "index_sumscores_on_member_id_and_created_at"
    t.index ["member_id"], name: "index_sumscores_on_member_id"
  end

  create_table "taskresults", force: :cascade do |t|
    t.integer "atmtCount1st", default: 0
    t.integer "atmtCount2nd", default: 0
    t.integer "atmtCount3rd", default: 0
    t.integer "atmtCount4th", default: 0
    t.integer "atmtCount5th", default: 0
    t.integer "atmtCount6th", default: 0
    t.integer "atmtCount7th", default: 0
    t.integer "atmtCountResult", default: 0
    t.integer "mathCount1st", default: 0
    t.integer "mathCount2nd", default: 0
    t.integer "mathCount3rd", default: 0
    t.integer "mathCount4th", default: 0
    t.integer "mathCount5th", default: 0
    t.integer "mathCount6th", default: 0
    t.integer "mathCount7th", default: 0
    t.integer "mathCountResult", default: 0
    t.integer "clickCount1st", default: 0
    t.integer "clickCount2nd", default: 0
    t.integer "clickCount3rd", default: 0
    t.integer "clickCount4th", default: 0
    t.integer "clickCount5th", default: 0
    t.integer "clickCount6th", default: 0
    t.integer "clickCount7th", default: 0
    t.integer "clickCountResult", default: 0
    t.integer "member_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_id", "created_at"], name: "index_taskresults_on_member_id_and_created_at"
    t.index ["member_id"], name: "index_taskresults_on_member_id"
  end

end
