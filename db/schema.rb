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

ActiveRecord::Schema.define(version: 2019_01_21_125848) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "interviews", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "test_results", force: :cascade do |t|
    t.string "candidate_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "interview_id"
    t.integer "total_score"
    t.index ["interview_id"], name: "index_test_results_on_interview_id"
  end

  create_table "test_scores", force: :cascade do |t|
    t.integer "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "test_result_id"
    t.integer "test_skill_id"
    t.index ["test_result_id"], name: "index_test_scores_on_test_result_id"
    t.index ["test_skill_id"], name: "index_test_scores_on_test_skill_id"
  end

  create_table "test_skills", force: :cascade do |t|
    t.string "name"
    t.bigint "interview_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["interview_id"], name: "index_test_skills_on_interview_id"
  end

  add_foreign_key "test_skills", "interviews"
end
