class TrainerController < ApplicationController
    def index
        @all_trainers = Trainer.all
        render json: @all_trainers
    end

    def show
        @trainer = Trainer.find(params[:id])
        render json: @trainer
    end
end