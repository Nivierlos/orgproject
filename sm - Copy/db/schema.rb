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

ActiveRecord::Schema.define(version: 2018_08_19_033243) do

  create_table "courses", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "module_code"
    t.string "module_name"
    t.integer "department_id"
    t.integer "level"
    t.integer "user_id"
    t.integer "credit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departments", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name"
    t.string "full_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "results", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "student_id"
    t.integer "course_id"
    t.integer "department_id"
    t.integer "level"
    t.float "marks"
    t.integer "ac_year", default: 2018
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "reg_number"
    t.string "first_name"
    t.string "last_name"
    t.date "dob"
    t.string "email"
    t.string "phone"
    t.string "sex"
    t.string "address"
    t.string "profile_picture"
    t.integer "ubudehe"
    t.string "nid_passport"
    t.string "father_name"
    t.string "mother_name"
    t.string "guadian_name"
    t.string "nationality"
    t.integer "department_id"
    t.integer "level"
    t.string "sponsor"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ac_year"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "department_id"
    t.string "position"
    t.string "phone"
    t.string "password_salt"
    t.string "password_hash"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
