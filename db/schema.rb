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

ActiveRecord::Schema.define(version: 2019_06_14_184652) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carts", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "category_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "frontads", force: :cascade do |t|
    t.string "banner_url"
    t.string "side_url"
    t.string "video_url"
    t.string "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_purchases", force: :cascade do |t|
    t.bigint "order_id"
    t.bigint "purchase_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_order_purchases_on_order_id"
    t.index ["purchase_id"], name: "index_order_purchases_on_purchase_id"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "user_id"
    t.decimal "total", precision: 8, scale: 2
    t.decimal "decimal", precision: 8, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_carts", force: :cascade do |t|
    t.bigint "product_id"
    t.bigint "cart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cart_id"], name: "index_product_carts_on_cart_id"
    t.index ["product_id"], name: "index_product_carts_on_product_id"
  end

  create_table "product_categories", force: :cascade do |t|
    t.bigint "product_id"
    t.bigint "category_id"
    t.index ["category_id"], name: "index_product_categories_on_category_id"
    t.index ["product_id"], name: "index_product_categories_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.integer "quantity"
    t.string "image"
    t.decimal "price", precision: 8, scale: 2
    t.decimal "decimal", precision: 8, scale: 2
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "purchases", force: :cascade do |t|
    t.bigint "product_id"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "telephone"
    t.string "street_address"
    t.string "state"
    t.string "password_digest"
    t.string "email"
    t.boolean "admin", default: false
    t.boolean "employee", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "order_purchases", "orders"
  add_foreign_key "order_purchases", "purchases"
  add_foreign_key "product_carts", "carts"
  add_foreign_key "product_carts", "products"
  add_foreign_key "product_categories", "categories"
  add_foreign_key "product_categories", "products"
end
