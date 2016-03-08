class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.references :patient, index: true, foreign_key: true
      t.references :provider, index: true, foreign_key: true
      t.date :appointment_date
      t.time :time_from
      t.time :time_to
      t.string :appointment_type
      t.text :appointment_reason
      t.boolean :request_met
      t.text :comments

      t.timestamps null: false
    end
  end
end
