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

ActiveRecord::Schema.define(version: 20160927025134) do

  create_table "carreras", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mallas", force: :cascade do |t|
    t.string   "plan"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "carrera_id"
  end

  add_index "mallas", ["plan", "carrera_id"], name: "index_mallas_on_plan_and_carrera_id", unique: true

  create_table "modulos", force: :cascade do |t|
    t.text     "nombre"
    t.string   "codigo"
    t.integer  "creditos"
    t.integer  "nivel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "malla_id"
  end

  create_table "profesors", force: :cascade do |t|
    t.string   "nombre"
    t.string   "email"
    t.string   "rut"
    t.string   "telefono"
    t.string   "tipo"
    t.integer  "precioHora"
    t.float    "numHrs"
    t.float    "hrsDocencia"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "seccions", force: :cascade do |t|
    t.integer  "modulo_id"
    t.string   "nombre"
    t.integer  "hrsLab"
    t.integer  "hrsCatedra"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "seccions", ["modulo_id"], name: "index_seccions_on_modulo_id"

  create_table "usuarios", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "rut"
    t.string   "tipo"
    t.string   "nombre"
    t.string   "apellido"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "activo",                 default: false
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true

end
