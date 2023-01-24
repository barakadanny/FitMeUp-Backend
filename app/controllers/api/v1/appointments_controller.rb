class Api::V1::AppointmentsController < ApplicationController
  skip_before_action :verify_authenticity_token
  # rubocop:disable Style/SymbolArray
  before_action :set_appointment, only: [:show, :create, :update, :destroy]
  # rubocop:enable Style/SymbolArray

  def index
    @appointments = Appointment.all
    render json: @appointments
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
    if @appointment.update(appointment_params)
      render json: @appointment
    else
      render json: { errors: @appointment.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    if @appointment.present?
      @appointment.destroy
      head :no_content
    else
      render json: { error: 'appointment not found' }, status: :not_found
    end
  end

  private

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  def appointment_params
    params.permit(:user_id, :trainer_id, :appointment_date, :appointment_status, :context)
  end
end
