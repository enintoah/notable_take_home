class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.string :patient_first_name, null: false 
      t.string :patient_last_name, null: false 
      t.string :appointment_type, null: false 
      t.datetime :appointment_time, null: false 
      t.integer :doctor_id, null: false 
      t.timestamps
    end
  end
end
