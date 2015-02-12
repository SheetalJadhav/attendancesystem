class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :firstname
      t.string :lastname
      t.string :middlename
      t.string :address
      t.integer :contact
      t.date :dob
      t.string :email
      t.string :active
      t.string :boolean

      t.timestamps
    end
  end
end
