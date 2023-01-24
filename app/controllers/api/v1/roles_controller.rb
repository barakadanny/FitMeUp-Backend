class Api::V1::RolesController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_role, only: [:show, :create, :update, :destroy]

  def index
    @roles = Role.all
    render json: @roles
  end

  def show
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
    if @role.update(role_params)
      render json: @role
    else
      render json: { errors: @role.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    @role.destroy
    head :no_content
  end

  private

  def set_role
    @role = Role.find(params[:id])
  end

  def role_params
    params.require(:role).permit(:user_id, :role, :security_question, :security_answer)
  end
end
  