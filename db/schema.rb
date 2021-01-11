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

ActiveRecord::Schema.define(version: 2020_10_08_032139) do

  create_table "answers", force: :cascade do |t|
    t.string "correct_answer"
    t.integer "question_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "exam_questions", force: :cascade do |t|
    t.string "prompt"
    t.string "a"
    t.string "b"
    t.string "c"
    t.string "d"
    t.string "e"
    t.boolean "multiple_answers"
    t.integer "difficulty_rating"
    t.string "category"
    t.string "license"
    t.string "field"
    t.integer "exam_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "selected_answer"
    t.boolean "correct"
    t.string "correct_answer"
    t.index ["exam_id"], name: "index_exam_questions_on_exam_id"
  end

  create_table "exams", force: :cascade do |t|
    t.string "license"
    t.string "field"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "grade"
    t.boolean "completed", default: false
    t.integer "current_question", default: 0
    t.integer "time", default: 10800
    t.index ["user_id"], name: "index_exams_on_user_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "prompt"
    t.string "a"
    t.string "b"
    t.string "c"
    t.string "d"
    t.string "e"
    t.boolean "multiple_answers"
    t.integer "difficulty_rating"
    t.string "category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "license"
    t.string "field"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "exam_questions", "exams"
  add_foreign_key "exams", "users"
end
