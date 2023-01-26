class Api::V1::TrainersController < ApplicationController
  def index
    @all_trainers = Trainer.all.includes(:specialities, :user)
    modified_trainers = @all_trainers.map do |trainer|
      modify_trainer(trainer)
    end

    render json: modified_trainers
  end

  def show
    @trainer = Trainer.where(id: params[:id]).includes(:user)[0]
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
    full_name: trainer.user.full_name,
    date_of_birth: trainer.user.date_of_birth,
    address: trainer.user.address,
    email_address: trainer.user.email_address,
    phone_number: trainer.user.phone_number,
    health_info: trainer.user.health_info,
    height_in_meter: trainer.user.height_in_meter,
    weight_in_kg: trainer.user.weight_in_kg,
    profile_pic: trainer.user.profile_pic,
    price: trainer.price,
    bio: trainer.bio,
    created_at: trainer.created_at,
    updated_at: trainer.updated_at,
    specialities: trainer.specialities
  }
end

# username: "yo_yo_danny",
#  full_name: "Danny Baraka",
#  date_of_birth: Wed, 10 May 1995,
#  address: "Nairobi, KENYA",
#  email_address: "danny@gmail.com",
#  phone_number: "+91 1234567890",
#  health_info: nil,
#  height_in_meter: nil,
#  weight_in_kg: nil,
#  profile_pic: "https://unsplash.com/photos/iEEBWgY_6lA"