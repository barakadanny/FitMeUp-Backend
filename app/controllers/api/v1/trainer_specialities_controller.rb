class Api::V1::TrainerSpecialitiesController < ApplicationController
  def index
    @trainer = Trainer.find(params[:trainer_id])
    render json: @trainer.specialities
  end
end
