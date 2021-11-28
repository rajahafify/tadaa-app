# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_11_28_113954) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.string "bookable_type", null: false
    t.bigint "bookable_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "talent_services_id", null: false
    t.index ["bookable_type", "bookable_id"], name: "index_bookings_on_bookable"
    t.index ["talent_services_id"], name: "index_bookings_on_talent_services_id"
  end

  create_table "cart_items", force: :cascade do |t|
    t.bigint "cart_id", null: false
    t.string "purchasable_type", null: false
    t.bigint "purchasable_id", null: false
    t.integer "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "price_per_unit_cents"
    t.index ["cart_id"], name: "index_cart_items_on_cart_id"
    t.index ["purchasable_type", "purchasable_id"], name: "index_cart_items_on_purchasable"
  end

  create_table "carts", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "checked_out_at", precision: 6
    t.string "currency"
    t.string "total_amount_cents"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_carts_on_user_id"
  end

  create_table "order_items", force: :cascade do |t|
    t.bigint "order_id", null: false
    t.string "purchasable_type", null: false
    t.bigint "purchasable_id", null: false
    t.integer "quantity"
    t.integer "price_per_unit_cents"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["order_id"], name: "index_order_items_on_order_id"
    t.index ["purchasable_type", "purchasable_id"], name: "index_order_items_on_purchasable"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "cart_id", null: false
    t.bigint "payment_id", null: false
    t.integer "total_cents"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cart_id"], name: "index_orders_on_cart_id"
    t.index ["payment_id"], name: "index_orders_on_payment_id"
  end

  create_table "payments", force: :cascade do |t|
    t.string "provider"
    t.string "provider_reference"
    t.integer "amount_cents"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "talent_services", force: :cascade do |t|
    t.bigint "talent_id", null: false
    t.string "name"
    t.text "descriptions"
    t.integer "amount_cents"
    t.string "currency"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["talent_id"], name: "index_talent_services_on_talent_id"
  end

  create_table "talents", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "instagram_url"
    t.string "instagram_handle"
    t.string "twitter_url"
    t.string "twitter_handle"
    t.index ["user_id"], name: "index_talents_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "bookings", "talent_services", column: "talent_services_id"
  add_foreign_key "cart_items", "carts"
  add_foreign_key "carts", "users"
  add_foreign_key "order_items", "orders"
  add_foreign_key "orders", "carts"
  add_foreign_key "orders", "payments"
  add_foreign_key "talent_services", "talents"
  add_foreign_key "talents", "users"
end
