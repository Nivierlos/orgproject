class CreateResults < ActiveRecord::Migration[5.2]
  def change
    create_table :results do |t|
      t.integer :student_id
      t.integer :course_id
      t.integer :department_id
      t.integer :level
      t.float :marks
      t.integer :ac_year

      t.timestamps
    end
  end
end
