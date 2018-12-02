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

ActiveRecord::Schema.define(version: 2018_12_02_180000) do

  create_table "equipes", force: :cascade do |t|
    t.string "nome"
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "foto"
  end

  create_table "instituicaos", force: :cascade do |t|
    t.string "nome_fantasia"
    t.string "razao_social"
    t.string "cnpj"
    t.string "email"
    t.string "password_digest"
    t.string "cep"
    t.string "rua"
    t.string "numero"
    t.string "bairro"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "tel"
  end

  create_table "necessidades", force: :cascade do |t|
    t.string "descricao"
    t.integer "instituicao_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["instituicao_id"], name: "index_necessidades_on_instituicao_id"
  end

end
