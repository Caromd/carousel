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

ActiveRecord::Schema.define(version: 20170116172316) do

  create_table "interior_colours", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "makes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "models", force: :cascade do |t|
    t.integer  "make_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "models", ["make_id"], name: "index_models_on_make_id"

  create_table "paint_colours", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plans", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "vehicles", force: :cascade do |t|
    t.integer  "make_id"
    t.integer  "model_id"
    t.integer  "plan_id"
    t.integer  "interior_colour_id"
    t.integer  "paint_colour_id"
    t.string   "mileage"
    t.string   "year"
    t.string   "fuel"
    t.string   "transmission"
    t.integer  "price"
    t.string   "stock_number"
    t.string   "derivative"
    t.string   "prior_use"
    t.string   "vehicle_type"
    t.string   "drive"
    t.string   "paint_colour"
    t.string   "interior_colour"
    t.string   "displacement"
    t.string   "fuel_type"
    t.string   "description"
    t.boolean  "full_service_history"
    t.boolean  "one_owner"
    t.boolean  "low_kilometers"
    t.boolean  "abs_brakes"
    t.boolean  "air_conditioning"
    t.boolean  "alarm"
    t.boolean  "alloy_wheels"
    t.boolean  "central_locking"
    t.boolean  "electric_windows"
    t.boolean  "immobilizer"
    t.boolean  "power_steering"
    t.boolean  "airbags"
    t.boolean  "radio"
    t.boolean  "cd"
    t.boolean  "mp3"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "image_id"
  end

  add_index "vehicles", ["interior_colour_id"], name: "index_vehicles_on_interior_colour_id"
  add_index "vehicles", ["make_id"], name: "index_vehicles_on_make_id"
  add_index "vehicles", ["model_id"], name: "index_vehicles_on_model_id"
  add_index "vehicles", ["paint_colour_id"], name: "index_vehicles_on_paint_colour_id"
  add_index "vehicles", ["plan_id"], name: "index_vehicles_on_plan_id"

end
