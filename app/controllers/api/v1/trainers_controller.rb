class TrainerController < ApplicationController
    def index
        @all_trainers = Trainer.all
        render json: @all_trainers
    end

    def show
        @trainer = Trainer.find(params[:id])
        render json: @trainer
    end

    def create
        @trainer = Trainer.new (
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

        if @trainer != nil
            @trainer.destroy
            render json: @trainer
        else
            render json: { error: 'appointment not found' }, status: :not_found
        end
    end
end