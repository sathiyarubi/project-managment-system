class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :address
      t.string :gender
      t.string :dob
      t.string :city
      t.string :state
      t.string :pin_code
      t.string :mobile_no
      t.string :role_id
      t.string :manager_id

      t.timestamps
    end
  end
end
