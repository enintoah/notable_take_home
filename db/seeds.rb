# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Doctor.destroy_all
Appointment.destroy_all

doctor1 = Doctor.create!(first_name: "George", last_name: "Washington")
doctor2 = Doctor.create!(first_name: "Abraham", last_name: "Lincoln")
doctor3 = Doctor.create!(first_name: "Barack", last_name: "Obama")

Appointment.create!(patient_first_name: "Joey",patient_last_name: "Tribianni", appointment_type: "New Patient", appointment_time: DateTime.new(2022, 10, 10, 0, 0), doctor_id: doctor1.id)
Appointment.create!(patient_first_name: "Chandler",patient_last_name: "Bing", appointment_type: "Follow-up", appointment_time: DateTime.new(2022, 10, 11, 0, 0), doctor_id: doctor1.id)

Appointment.create!(patient_first_name: "Ross",patient_last_name: "Geller", appointment_type: "New Patient", appointment_time: DateTime.new(2022, 10, 10, 0, 0), doctor_id: doctor2.id)
Appointment.create!(patient_first_name: "Rachel",patient_last_name: "Something", appointment_type: "New Patient", appointment_time: DateTime.new(2022, 10, 10, 0, 0), doctor_id: doctor2.id)

Appointment.create!(patient_first_name: "Monica",patient_last_name: "Geller", appointment_type: "Follow-up", appointment_time: DateTime.new(2022, 10, 10, 0, 0), doctor_id: doctor3.id)
Appointment.create!(patient_first_name: "Phoebe",patient_last_name: "Something", appointment_type: "Follow-up", appointment_time: DateTime.new(2022, 10, 10, 0, 0), doctor_id: doctor3.id)