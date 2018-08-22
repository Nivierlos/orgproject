class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.integer :reg_number
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.string :email
      t.string :phone
      t.string :sex
      t.string :address
      t.string :profile_picture
      t.integer :ubudehe
      t.string :nid_passport
      t.string :father_name
      t.string :mother_name
      t.string :guadian_name
      t.string :nationality
      t.integer :department_id
      t.integer :level
      t.string :sponsor
      t.string :password

      t.timestamps
    end
  end
end
