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

ActiveRecord::Schema.define(version: 20161030171455) do

  create_table "blueprints", force: :cascade do |t|
    t.integer "item_id"
    t.integer "quantity"
    t.integer "time"
    t.integer "maxProductionLimit"
    t.index ["item_id"], name: "index_blueprints_on_item_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.integer  "item_id"
    t.integer  "materialTypeID"
    t.integer  "quantity"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["item_id"], name: "index_ingredients_on_item_id"
  end

  create_table "items", force: :cascade do |t|
    t.integer  "groupID"
    t.string   "typeName"
    t.float    "volume"
    t.integer  "portionSize"
    t.float    "basePrice"
    t.boolean  "published"
    t.integer  "marketGroupID"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "metaGroupID"
    t.string   "metaGroupName"
  end

  create_table "prices", force: :cascade do |t|
    t.integer  "item_id"
    t.float    "price"
    t.integer  "systemID"
    t.string   "order_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_prices_on_item_id"
  end

end
