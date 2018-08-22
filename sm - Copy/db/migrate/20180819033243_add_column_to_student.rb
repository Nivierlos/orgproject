class AddColumnToStudent < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :ac_year, :string
  end
end
