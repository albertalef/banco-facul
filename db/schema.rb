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

ActiveRecord::Schema[7.1].define(version: 2024_09_26_111402) do
  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource"
  end

  create_table "addresses", force: :cascade do |t|
    t.string "street", null: false
    t.string "number", null: false
    t.string "city", null: false
    t.string "state", null: false
    t.string "neighborhood", null: false
    t.string "complement", null: false
    t.string "zipcode", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "alerts", force: :cascade do |t|
    t.string "description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bill_cards", force: :cascade do |t|
    t.integer "card_id"
    t.integer "bill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bill_id"], name: "index_bill_cards_on_bill_id"
    t.index ["card_id"], name: "index_bill_cards_on_card_id"
  end

  create_table "bill_parcels", force: :cascade do |t|
    t.integer "bill_id"
    t.integer "parcel_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bill_id"], name: "index_bill_parcels_on_bill_id"
    t.index ["parcel_id"], name: "index_bill_parcels_on_parcel_id"
  end

  create_table "bill_statuses", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bills", force: :cascade do |t|
    t.integer "status_id"
    t.decimal "total_amount", precision: 12, scale: 2, null: false
    t.decimal "paid_amount", precision: 12, scale: 2, null: false
    t.datetime "paid_at"
    t.date "due_at", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["status_id"], name: "index_bills_on_status_id"
  end

  create_table "brands", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "card_statuses", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cards", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "brand_id", null: false
    t.integer "category_id", null: false
    t.integer "card_status_id", null: false
    t.string "number", null: false
    t.date "valid_at", null: false
    t.string "cvv", null: false
    t.decimal "credit_limit", precision: 12, scale: 2
    t.decimal "tax", precision: 5, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_id"], name: "index_cards_on_brand_id"
    t.index ["card_status_id"], name: "index_cards_on_card_status_id"
    t.index ["category_id"], name: "index_cards_on_category_id"
    t.index ["user_id"], name: "index_cards_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name", null: false
    t.string "benefits"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "complaints", force: :cascade do |t|
    t.integer "user_id"
    t.integer "bill_status_id"
    t.string "description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bill_status_id"], name: "index_complaints_on_bill_status_id"
    t.index ["user_id"], name: "index_complaints_on_user_id"
  end

  create_table "dependent_cards", force: :cascade do |t|
    t.integer "card_id"
    t.string "number", null: false
    t.string "cvv", null: false
    t.decimal "credit_limit", precision: 12, scale: 2, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["card_id"], name: "index_dependent_cards_on_card_id"
  end

  create_table "dependents", force: :cascade do |t|
    t.integer "card_id"
    t.integer "user_id"
    t.string "name", null: false
    t.string "cpf", null: false
    t.date "birth_date", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["card_id"], name: "index_dependents_on_card_id"
    t.index ["user_id"], name: "index_dependents_on_user_id"
  end

  create_table "dispute_statuses", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "disputes", force: :cascade do |t|
    t.integer "dispute_status_id"
    t.string "description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dispute_status_id"], name: "index_disputes_on_dispute_status_id"
  end

  create_table "financial_reports", force: :cascade do |t|
    t.integer "user_id"
    t.integer "bill_id"
    t.decimal "total_spent", precision: 12, scale: 2, null: false
    t.decimal "total_paid", precision: 12, scale: 2, null: false
    t.string "category", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bill_id"], name: "index_financial_reports_on_bill_id"
    t.index ["user_id"], name: "index_financial_reports_on_user_id"
  end

  create_table "fraud_statuses", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "frauds", force: :cascade do |t|
    t.integer "fraud_status_id"
    t.date "detected_at", null: false
    t.string "description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fraud_status_id"], name: "index_frauds_on_fraud_status_id"
  end

  create_table "parcels", force: :cascade do |t|
    t.integer "status_id", null: false
    t.integer "bill_id", null: false
    t.decimal "amount", precision: 12, scale: 2, null: false
    t.date "due_at", null: false
    t.integer "number", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bill_id"], name: "index_parcels_on_bill_id"
    t.index ["status_id"], name: "index_parcels_on_status_id"
  end

  create_table "suppliers", force: :cascade do |t|
    t.integer "address_id"
    t.string "name", null: false
    t.string "cnpj"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_suppliers_on_address_id"
  end

  create_table "transaction_statuses", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.integer "supplier_id"
    t.integer "transaction_status_id"
    t.integer "fraud_id"
    t.integer "dispute_id"
    t.integer "bill_id"
    t.decimal "value", precision: 12, scale: 2, null: false
    t.string "description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bill_id"], name: "index_transactions_on_bill_id"
    t.index ["dispute_id"], name: "index_transactions_on_dispute_id"
    t.index ["fraud_id"], name: "index_transactions_on_fraud_id"
    t.index ["supplier_id"], name: "index_transactions_on_supplier_id"
    t.index ["transaction_status_id"], name: "index_transactions_on_transaction_status_id"
  end

  create_table "user_cards", force: :cascade do |t|
    t.integer "user_id"
    t.integer "card_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["card_id"], name: "index_user_cards_on_card_id"
    t.index ["user_id"], name: "index_user_cards_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bills", "bill_statuses", column: "status_id"
  add_foreign_key "parcels", "bill_statuses", column: "status_id"
end
