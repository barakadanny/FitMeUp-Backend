class Api::V1::TrainerSpecialitiesController < ApplicationController
  before_action :authenticate_request

  def create
    
  end
end

private

def trainer_specialities_params
  params.require(:trainer_speciality).permit(:trainer_id, :speciality_id)
end