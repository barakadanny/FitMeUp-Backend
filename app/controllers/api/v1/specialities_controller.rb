class Api::V1::SpecialitiesController < ApplicationController
  before_action :authenticate_request

  def index
    @specialities = Speciality.all
    render json: @specialities
  end

  def create
    @speciality = Speciality.new(speciality_params)

    if @speciality.save
      render json: @speciality, status: :created
    else
      render json: { errors: @speciality.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    @speciality = Speciality.find(params[:id])
    if @speciality.present?
      @speciality.destroy
      render json: { message: 'speciality deleted successfully' }, status: :ok
    else
      render json: { error: 'spciality not found' }, status: :not_found
    end
  end
end

private

def speciality_params
  params.require(:speciality).permit(:name)
end
