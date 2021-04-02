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

ActiveRecord::Schema.define(version: 2021_03_30_021848) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.text "password_digest"
    t.text "email"
  end

  create_table "appointments", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "date"
    t.text "price"
    t.text "work_performed"
    t.integer "initial_a4_frequency"
    t.text "notes_for_customer"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "piano_id"
    t.index ["piano_id"], name: "index_appointments_on_piano_id"
    t.index ["user_id"], name: "index_appointments_on_user_id"
  end

  create_table "pianos", force: :cascade do |t|
    t.bigint "user_id"
    t.text "model"
    t.text "serial"
    t.integer "age"
    t.text "image_url"
    t.text "private_technical_notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "make"
    t.index ["user_id"], name: "index_pianos_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.integer "number_of_pianos"
    t.string "customer_notes"
    t.string "technician_notes"
    t.string "address"
    t.string "password_digest"
    t.string "phone_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "institution", default: 0
    t.string "institution_name"
  end

  add_foreign_key "appointments", "pianos"
end
