class Api::V1::AppointmentsController < ApplicationController


  def appointment_params
    params.require(:appointment).permit(:user_id, :trainer_id, :appointment_date, :appointment_status, :context)
  end
end