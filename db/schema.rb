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

ActiveRecord::Schema.define(version: 20171017220714) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id", limit: 19, precision: 19
    t.string "author_type"
    t.integer "author_id", limit: 19, precision: 19
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "i_act_adm_com_aut_typ_aut_id"
    t.index ["namespace"], name: "i_act_adm_com_nam"
    t.index ["resource_type", "resource_id"], name: "i_act_adm_com_res_typ_res_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: 6
    t.datetime "remember_created_at", precision: 6
    t.integer "sign_in_count", precision: 38, default: 0, null: false
    t.datetime "current_sign_in_at", precision: 6
    t.datetime "last_sign_in_at", precision: 6
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "i_adm_use_res_pas_tok", unique: true
  end

  create_table "employees", force: :cascade do |t|
    t.string "dni"
    t.string "ape_pat"
    t.string "ape_mat"
    t.string "nombres"
    t.string "direccion"
    t.string "telefono"
    t.string "correo"
    t.date "fec_nacimiento"
    t.integer "estado", precision: 38
    t.integer "tip_tra", precision: 38
    t.integer "esta_civil", precision: 38
    t.integer "afp", precision: 38
    t.integer "admin_user_id", limit: 19, precision: 19
    t.string "foto"
    t.string "ape_nom"
    t.string "correo_corp"
    t.date "fec_inicon"
    t.date "fec_tercon"
    t.string "grado"
    t.string "cargo"
    t.integer "area", precision: 38
    t.integer "sele", precision: 38
    t.float "remuneracion"
    t.integer "sele2", precision: 38
    t.string "distrito"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["admin_user_id"], name: "i_employees_admin_user_id"
  end

  add_foreign_key "employees", "admin_users"
end
