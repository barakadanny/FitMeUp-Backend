class Api::V1::TrainersController < ApplicationController
  before_action :authenticate_request, except: :index

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
  rescue ActiveRecord::RecordNotFound => e
    render json: { message: e.message }, status: :unprocessable_entity
  end

  def destroy
    @trainer = Trainer.find(params[:id])
    @user = User.find(@trainer.user_id)
    @user.destroy
  rescue ActiveRecord::RecordNotFound => e
    render json: { message: e.message }, status: :unprocessable_entity
  end

  private

  def modify_trainer(trainer_obj)
    exclude = %w[id user_id created_at updated_at]
    user = JSON.parse(trainer_obj.user.to_json).except(*exclude)
    trainer = JSON.parse(trainer_obj.to_json).except(*exclude)
    specialities = trainer_obj.specialities.map do |speciality|
      obj = JSON.parse(speciality.to_json).except(*exclude)
      obj['name']
    end
    user_detail = {
      id: trainer_obj.id
    }
    specialities_obj = {
      specialities:
    }
    user_detail.merge(user, trainer, specialities_obj)
  end
end
