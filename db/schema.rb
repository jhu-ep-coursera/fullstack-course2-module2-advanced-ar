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

ActiveRecord::Schema.define(version: 20150922165025) do

  create_table "hobbies", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hobbies_people", id: false, force: :cascade do |t|
    t.integer "person_id"
    t.integer "hobby_id"
  end

  add_index "hobbies_people", ["hobby_id"], name: "index_hobbies_people_on_hobby_id"
  add_index "hobbies_people", ["person_id"], name: "index_hobbies_people_on_person_id"

  create_table "jobs", force: :cascade do |t|
    t.string   "title"
    t.string   "company"
    t.string   "position_id"
    t.integer  "person_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "jobs", ["person_id"], name: "index_jobs_on_person_id"

  create_table "people", force: :cascade do |t|
    t.string   "first_name"
    t.integer  "age"
    t.string   "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "login"
    t.string   "pass"
  end

  create_table "personal_infos", force: :cascade do |t|
    t.float    "height"
    t.float    "weight"
    t.integer  "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "personal_infos", ["person_id"], name: "index_personal_infos_on_person_id"

  create_table "salary_ranges", force: :cascade do |t|
    t.float    "min_salary"
    t.float    "max_salary"
    t.integer  "job_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "salary_ranges", ["job_id"], name: "index_salary_ranges_on_job_id"

end
