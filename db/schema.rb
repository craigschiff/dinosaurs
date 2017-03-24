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

ActiveRecord::Schema.define(version: 20170324175454) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dinosaur_preys", force: :cascade do |t|
    t.integer  "dinosaur_id"
    t.integer  "prey_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["dinosaur_id"], name: "index_dinosaur_preys_on_dinosaur_id", using: :btree
    t.index ["prey_id"], name: "index_dinosaur_preys_on_prey_id", using: :btree
  end

  create_table "dinosaur_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dinosaurs", force: :cascade do |t|
    t.string   "name"
    t.integer  "dinosaur_type_id"
    t.integer  "weight"
    t.integer  "badass_index"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["dinosaur_type_id"], name: "index_dinosaurs_on_dinosaur_type_id", using: :btree
  end

  create_table "preys", force: :cascade do |t|
    t.string   "name"
    t.string   "type"
    t.integer  "weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "dinosaur_preys", "dinosaurs"
  add_foreign_key "dinosaur_preys", "preys"
  add_foreign_key "dinosaurs", "dinosaur_types"
end
