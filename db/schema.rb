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

ActiveRecord::Schema[7.0].define(version: 2023_04_20_155040) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "activities_tables", force: :cascade do |t|
    t.datetime "ordered", precision: nil
    t.boolean "complete"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.bigint "activity_id", null: false
    t.index ["activity_id"], name: "index_activities_tables_on_activity_id"
    t.index ["user_id"], name: "index_activities_tables_on_user_id"
  end

  create_table "cleaning_tables", force: :cascade do |t|
    t.datetime "ordered", precision: nil
    t.boolean "complete"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "cleaning_id", null: false
    t.bigint "user_id", null: false
    t.index ["cleaning_id"], name: "index_cleaning_tables_on_cleaning_id"
    t.index ["user_id"], name: "index_cleaning_tables_on_user_id"
  end

  create_table "cleanings", force: :cascade do |t|
    t.time "hour"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "foods", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "ordered", precision: nil
    t.boolean "complete"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.bigint "food_id", null: false
    t.index ["food_id"], name: "index_orders_on_food_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.integer "number"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "activities_tables", "activities"
  add_foreign_key "activities_tables", "users"
  add_foreign_key "cleaning_tables", "cleanings"
  add_foreign_key "cleaning_tables", "users"
  add_foreign_key "orders", "foods"
  add_foreign_key "orders", "users"
end
