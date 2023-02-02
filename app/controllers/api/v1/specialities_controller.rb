class Api::V1::SpecialitiesController < ApplicationController
  # before_action :authenticate_request

  def index
    @specialities = Speciality.all
    render json: @specialities
  end

  def create

  end
end

private

def speciality_params
  params.require(:speciality).permit(:name)
end
