class Appointment < ApplicationRecord
  belongs_to :doctor, 
    class_name: :Doctor,
    primary_key: :id, 
    foreign_key: :doctor_id
end
