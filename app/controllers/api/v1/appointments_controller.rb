class Api::V1::AppointmentsController < ApplicationController


  private
  
  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(:user_id, :trainer_id, :appointment_date, :appointment_status, :context)
  end
end