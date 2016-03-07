class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :first_name, null: false
      t.string :middle_initial
      t.string :last_name, null: false
      t.date :date_of_birth
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :cellphone_number
      t.string :home_number
      t.string :sex
      t.string :patient_type

      t.timestamps null: false
    end
  end
end
