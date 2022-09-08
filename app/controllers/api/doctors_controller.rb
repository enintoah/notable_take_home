class Api::DoctorsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @doctors = Doctor.all
    render :index 
  end

  def create 
    @appointments = Appointment.select('*').where(doctor_id: params[:doctor_id]).where(appointment_time: DateTime.new(params[:year].to_i, params[:month].to_i, params[:day].to_i))
    render json: @appointments
  end
end
