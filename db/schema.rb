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

ActiveRecord::Schema.define(version: 20170810205523) do

  create_table "ciudads", force: :cascade do |t|
    t.string "nombre"
    t.string "codigo_area"
    t.string "status"
    t.integer "estado_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["estado_id"], name: "index_ciudads_on_estado_id"
  end

  create_table "estados", force: :cascade do |t|
    t.string "nombre"
    t.string "zip"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "owners", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.date "fecha_nac"
    t.string "email"
    t.string "telefono"
    t.string "sexo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "properties", force: :cascade do |t|
    t.string "direccion"
    t.string "descripcion"
    t.integer "nro_hab"
    t.integer "nro_bannos"
    t.decimal "area"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "tipo_prop_id"
    t.integer "owner_id"
    t.integer "estado_id"
    t.integer "ciudad_id"
    t.decimal "precio"
    t.string "titulo"
  end

  create_table "tipo_props", force: :cascade do |t|
    t.string "nombre"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
