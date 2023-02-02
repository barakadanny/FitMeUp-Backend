class Api::V1::TrainerSpecialitiesController < ApplicationController
  before_action :authenticate_request

  def create
    @trainer_speciality = TrainerSpeciality.new(trainer_specialities_params)

    if @trainer_speciality.save
      render json: @trainer_speciality, status: :created
    else
      render json: { errors: @trainer_speciality.errors }, status: :unprocessable_entity
    end
  end
end

private

def trainer_specialities_params
  params.require(:trainer_speciality).permit(:trainer_id, :speciality_id)
end
