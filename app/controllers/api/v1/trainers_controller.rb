class Api::V1::TrainersController < ApplicationController
  def index
    @all_trainers = Trainer.all.includes(:specialities)
    modified_trainers = @all_trainers.map do |trainer|
      modify_trainer(trainer)
    end

    render json: modified_trainers
  end

  def show
    @trainer = Trainer.find(params[:id])
    render json: modify_trainer(@trainer)
  end

  def create
    @trainer = Trainer.new(
      user_id: params[:user_id],
      price: params[:price],
      bio: params[:bio]
    )

    if @trainer.save
      render json: @trainer, status: :created
    else
      render json: { errors: @trainer.errors }, status: :unprocessable_entity
    end
  end

  def update
    @trainer = Trainer.find(params[:id])

    if @trainer.update(user_id: params[:user_id], price: params[:price], bio: params[:bio])
      render json: @trainer
    else
      render json: { errors: @trainer.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    @trainers = Trainer.all
    @trainer = Trainer.find(params[:id])

    if @trainer.nil?
      render json: { error: 'appointment not found' }, status: :not_found
    else
      @trainer.destroy
      render json: @trainer
    end
  end
end

private

def modify_trainer(trainer)
  {
    id: trainer.id,
    user_id: trainer.user_id,
    price: trainer.price,
    bio: trainer.bio,
    created_at: trainer.created_at,
    updated_at: trainer.updated_at,
    specialities: trainer.specialities
  }
end
