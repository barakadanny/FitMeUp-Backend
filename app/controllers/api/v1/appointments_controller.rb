class Api::V1::AppointmentsController < ApplicationController

  def create
    @appointment = Appointment.new(appointment_params)
  
    if @appointment.save
      render json: @appointment, status: :created
    else
      render json: { errors: @appointment.errors }, status: :unprocessable_entity
    end
  end

  def update
    if @appointment.update(appointment_params)
      render json: @appointment
    else
      render json: { errors: @appointment.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    @appointment.destroy
    head :no_content
  end

  private

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(:user_id, :trainer_id, :appointment_date, :appointment_status, :context)
  end
end