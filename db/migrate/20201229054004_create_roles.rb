class CreateRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :roles do |t|
    	t.string :role_name
    	t.integer :employee_id
      t.timestamps
    end
  end
end
