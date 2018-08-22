class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :department_id
      t.string :position
      t.string :phone
      t.string :password_salt
      t.string :password_hash

      t.timestamps
    end
  end
end
