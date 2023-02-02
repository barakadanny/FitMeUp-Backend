class Api::V1::SpecialitiesController < ApplicationController
  before_action :authenticate_request

  def index
    @specialities = Speciality.all
    render json: @specialities
  end
end
