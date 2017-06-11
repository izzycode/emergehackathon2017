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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20170611064254) do
=======
ActiveRecord::Schema.define(version: 20170611050236) do
>>>>>>> 2eb30d1790e62f84eb97a248f1f2093512257d83

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bank_payments", force: :cascade do |t|
    t.string   "pull_bank_account"
    t.string   "pull_bin"
    t.date     "debit_exp"
    t.string   "currency_code"
    t.integer  "amount"
    t.string   "pull_name"
    t.string   "pull_address"
    t.datetime "transaction_time"
    t.string   "push_bank_account"
    t.string   "push_bin"
    t.string   "push_name"
    t.string   "push_address"
    t.string   "business_app_id"
    t.string   "terminal_id"
    t.string   "transaction_id"
    t.string   "response_code"

    t.integer  "user_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "goals", force: :cascade do |t|
    t.string   "description"
    t.string   "is_complete?"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.datetime "goal_time"
    t.index ["user_id"], name: "index_goals_on_user_id", using: :btree
  end

  create_table "identities", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_identities_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "instagram_uid"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.boolean  "admin"
    t.string   "profile_picture"
<<<<<<< HEAD
=======

    t.string   "bank_info"
    t.string   "pull_bank_info"
    t.string   "pull_bin"
    t.datetime "debit_exp"
    t.string   "currency_code"
    t.string   "pull_name"
    t.string   "pull_address"
    t.string   "push_bank"
    t.string   "push_bin"
    t.string   "push_name"
    t.string   "push_address"
>>>>>>> 6afad39690b2f8be4a719e14a3f9a4545ed8a2da
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree
  end

  add_foreign_key "goals", "users"
  add_foreign_key "identities", "users"
end
