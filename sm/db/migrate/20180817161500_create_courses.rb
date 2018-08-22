class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :module_code
      t.string :module_name
      t.integer :department_id
      t.integer :level
      t.integer :user_id
      t.integer :credit

      t.timestamps
    end
  end
end
