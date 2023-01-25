class Api::V1::AppointmentsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @appointments = Appointment.all
    render json: @appointments
  end

  def show
    @appointment = Appointment.find(params[:id])
    render json: @appointment
  end

  def create
    @appointment = Appointment.new(appointment_params)

    if @appointment.save
      render json: @appointment, status: :created
    else
      render json: { errors: @appointment.errors }, status: :unprocessable_entity
    end
  end

  def update
    @appointment = Appointment.find(params[:id])
    if @appointment.update(appointment_params)
      render json: @appointment
    else
      render json: { errors: @appointment.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    if @appointment.present?
      @appointment.destroy
      head :no_content
    else
      render json: { error: 'appointment not found' }, status: :not_found
    end
  end

  private

  def appointment_params
    params.require(:appointment).permit(:user_id, :trainer_id, :appointment_date, :appointment_status, :context)
  end
end
