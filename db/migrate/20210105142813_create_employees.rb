class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :employee_name
      t.text :address
      t.string :email_address
      t.string :phone
      t.datetime :date_of_birth
      t.string :image

      t.timestamps null: false

    end
    add_index :employees, :email_address, unique: true, where: 'email_address IS NOT NULL'

  end
end
