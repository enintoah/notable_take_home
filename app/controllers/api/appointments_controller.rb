class Api::AppointmentsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def destroy 
    @appointment = Appointment.find_by(id: params[:id])
    if @appointment
      if @appointment.destroy
        render json: ["Appointment was successfully deleted"]
      else 
        render json: ["Appointment was not deleted"]
      end
    else 
      render json: ["Appoinment could not be found"]
    end
  end

  def create 
    if params[:minute].to_i % 15 != 0 
      render json: ["Appointment can only start at 15 minute intervals"]
    else 
      @appointment = Appointment.new(doctor_id: params[:doctor_id], patient_first_name: params[:patient_first_name], patient_last_name: params[:patient_last_name], appointment_type: params[:appointment_type], appointment_time: DateTime.new(params[:year].to_i, params[:month].to_i, params[:hour].to_i, params[:minute].to_i))
      if @appointment.save
        render json: ["Appointment was successfully saved"]
      else 
        render json: @appointment.errors.full_messages, status: 422
      end
    end

  end

end