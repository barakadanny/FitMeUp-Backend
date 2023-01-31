class Api::V1::TrainersController < ApplicationController
  def index
    @all_trainers = Trainer.all.includes(:specialities, :user)
    modified_trainers = @all_trainers.map do |trainer|
      modify_trainer(trainer)
    end

    render json: modified_trainers
  end

  def show
    @trainer = Trainer.find(params[:id])
    render json: modify_trainer(@trainer)
  end

  private

  def modify_trainer(trainer_obj)
    exclude = ['id', 'user_id', 'created_at', 'updated_at']
    user = JSON.parse(trainer_obj.user.to_json).except(*exclude)
    trainer = JSON.parse(trainer_obj.to_json).except(*exclude)
    specialities = trainer_obj.specialities.map do |speciality|
      obj = JSON.parse(speciality.to_json).except(*exclude)
      obj['name']
    end
    user_detail = {
      id: trainer_obj.user_id
    }
    specialities_obj = {
      specialities: specialities
    }
    user_detail.merge(user, trainer, specialities_obj)
  end
end
