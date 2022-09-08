class Doctor < ApplicationRecord

  
  has_many :appointments, 
    class_name: :Appointment, 
    primary_key: :id, 
    foreign_key: :doctor_id
end
