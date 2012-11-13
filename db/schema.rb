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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121113091756) do

  create_table "contratos", :force => true do |t|
    t.string   "cod_contrato"
    t.string   "empresa"
    t.string   "tecnologia"
    t.integer  "proyecto_id"
    t.datetime "fecha_ini"
    t.datetime "fecha_fin"
    t.datetime "fecha_amp"
    t.decimal  "presupuesto_noiva", :precision => 8, :scale => 2
    t.datetime "created_at",                                      :null => false
    t.datetime "updated_at",                                      :null => false
  end

  add_index "contratos", ["cod_contrato", "proyecto_id"], :name => "index_contratos_on_cod_contrato_and_proyecto_id"

  create_table "sol_servicios", :force => true do |t|
    t.string   "numero"
    t.integer  "contrato_id"
    t.integer  "proyecto_id"
    t.string   "tipo"
    t.integer  "departamento_id"
    t.string   "asunto"
    t.integer  "precio_noiva"
    t.string   "comentarios"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "sol_servicios", ["numero", "contrato_id"], :name => "index_sol_servicios_on_numero_and_contrato_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
