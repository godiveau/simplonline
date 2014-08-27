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

ActiveRecord::Schema.define(version: 20140827122851) do

  create_table "answers", force: true do |t|
    t.string  "chosen_choices"
    t.integer "question_id"
    t.integer "user_id"
  end

  create_table "choices", force: true do |t|
    t.string  "content"
    t.integer "question_id"
    t.boolean "valid_answer"
    t.text    "explanation"
  end

  create_table "essais", force: true do |t|
    t.string   "fichier"
    t.boolean  "status"
    t.integer  "exercice_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "validateur"
    t.text     "reponse_char"
    t.string   "fichier_tests"
    t.integer  "user_id"
  end

  add_index "essais", ["user_id"], name: "index_essais_on_user_id"

  create_table "exercices", force: true do |t|
    t.text     "consigne"
    t.text     "echantillon"
    t.text     "reponse"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "format_reponse"
    t.string   "titre"
    t.string   "format_echantillon"
  end

  create_table "lessons", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "qcms", force: true do |t|
    t.string   "title"
    t.text     "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", force: true do |t|
    t.string   "title"
    t.integer  "qcm_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "nom"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",           default: false
    t.string   "email"
    t.string   "password_digest"
    t.boolean  "remote",          default: true
  end

end
