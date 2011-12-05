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

ActiveRecord::Schema.define(:version => 20111205093455) do

  create_table "backlogentries", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "status"
    t.integer  "priority"
    t.integer  "resolution"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "issuetype_id"
    t.integer  "project_id"
  end

  create_table "issuetypes", :force => true do |t|
    t.string   "name"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "issuetypes_projects", :id => false, :force => true do |t|
    t.integer "issuetype_id"
    t.integer "project_id"
  end

  create_table "projects", :force => true do |t|
    t.string   "title"
    t.string   "key"
    t.text     "description"
    t.integer  "status"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
