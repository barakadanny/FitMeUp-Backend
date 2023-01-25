class Api::V1::RolesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @roles = Role.all
    render json: @roles
  end

  def show
    @role = Role.find(params[:id])
    render json: @role
  end

  def create
    @role = Role.new(role_params)

    if @role.save
      render json: @role, status: :created
    else
      render json: { errors: @role.errors }, status: :unprocessable_entity
    end
  end

  def update
    @role = Role.find(params[:id])
    if @role.update(role_params)
      render json: @role
    else
      render json: { errors: @role.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    @role = Role.find(params[:id])
    @role.destroy
    head :no_content
  end

  private

  def role_params
    params.permit(:role, :security_question, :security_answer)
  end
end
