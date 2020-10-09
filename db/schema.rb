# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_200_924_043_056) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'items', force: :cascade do |t|
    t.string 'Name'
    t.integer 'Quantity'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'logs', force: :cascade do |t|
    t.string 'requestor_name'
    t.string 'requestor_email'
    t.string 'type_'
    t.string 'item_name'
    t.integer 'item_quantity'
    t.date 'check_in'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'transactions', force: :cascade do |t|
    t.string 'requestor_name'
    t.string 'requestor_email'
    t.string 'type_'
    t.string 'item_name'
    t.integer 'item_quantity'
    t.date 'remind_date'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'users', force: :cascade do |t|
    t.string 'name'
    t.string 'email'
    t.string 'password_digest'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.string 'auth_token'
    t.string 'password_reset_token'
    t.datetime 'password_reset_sent_at'
  end
end
