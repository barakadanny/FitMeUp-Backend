class Api::V1::SpecialitiesController < ApplicationController
  def index
    @specialities = Speciality.all
    render json: @specialities
  end
end
