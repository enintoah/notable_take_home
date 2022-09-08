class Appointment < ApplicationRecord
  validate :check_number_of_appointments

  def check_number_of_appointments
    appointments = Appointment.select('*').where(doctor_id: self.doctor_id).where(appointment_time: self.appointment_time)
    if appointments.length === 3
      errors.add(:appointment_time, "Doctor already has 3 appointments for this time slot")
    elsif self.appointment_type != "Follow-up" && self.appointment_type != "New Patient"
      errors.add(:appointment_type, "must either be Follow-up or New Patient")
      puts self.appointment_type
    end 
  end

  belongs_to :doctor, 
    class_name: :Doctor,
    primary_key: :id, 
    foreign_key: :doctor_id
end
