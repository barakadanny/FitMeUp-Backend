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

ActiveRecord::Schema[7.0].define(version: 2023_02_01_073147) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "trainer_id", null: false
    t.date "appointment_date", null: false
    t.string "appointment_status", default: "pending", null: false
    t.text "context"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["trainer_id"], name: "index_appointments_on_trainer_id"
    t.index ["user_id"], name: "index_appointments_on_user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "role", default: "user", null: false
    t.text "security_question"
    t.text "security_answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_roles_on_user_id"
  end

  create_table "specialities", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trainer_specialities", force: :cascade do |t|
    t.bigint "trainer_id", null: false
    t.bigint "speciality_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["speciality_id"], name: "index_trainer_specialities_on_speciality_id"
    t.index ["trainer_id"], name: "index_trainer_specialities_on_trainer_id"
  end

  create_table "trainers", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.decimal "price", null: false
    t.text "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_trainers_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username", null: false
    t.string "full_name", null: false
    t.date "date_of_birth", null: false
    t.text "address", null: false
    t.string "phone_number", null: false
    t.text "health_info"
    t.decimal "height_in_meter"
    t.decimal "weight_in_kg"
    t.string "profile_pic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "jti", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["jti"], name: "index_users_on_jti", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "appointments", "trainers"
  add_foreign_key "appointments", "users"
  add_foreign_key "roles", "users"
  add_foreign_key "trainer_specialities", "specialities"
  add_foreign_key "trainer_specialities", "trainers"
  add_foreign_key "trainers", "users"
end
