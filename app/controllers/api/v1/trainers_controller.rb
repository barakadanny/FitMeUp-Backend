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

  # def create
  #   @trainer = Trainer.new(
  #     user_id: params[:user_id],
  #     price: params[:price],
  #     bio: params[:bio]
  #   )

  #   if @trainer.save
  #     render json: @trainer, status: :created
  #   else
  #     render json: { errors: @trainer.errors }, status: :unprocessable_entity
  #   end
  # end

  # def update
  #   @trainer = Trainer.find(params[:id])

  #   if @trainer.update(user_id: params[:user_id], price: params[:price], bio: params[:bio])
  #     render json: @trainer
  #   else
  #     render json: { errors: @trainer.errors }, status: :unprocessable_entity
  #   end
  # end

  # def destroy
  #   @trainers = Trainer.all
  #   @trainer = Trainer.find(params[:id])

  #   if @trainer.nil?
  #     render json: { error: 'trainer not found' }, status: :not_found
  #   else
  #     @trainer.destroy
  #     render json: @trainer
  #   end
  # end
  
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
