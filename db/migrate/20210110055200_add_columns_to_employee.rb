class AddColumnsToEmployee < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :dob, :date
    add_column :employees, :gender, :string
  end
end
