class Api::V1::RolesController < ApplicationController
  def create
    @role = Role.new(role_params)
      
    if @role.save
      render json: @role, status: :created
    else
      render json: { errors: @role.errors }, status: :unprocessable_entity
    end
  end

  private

  def set_role
    @role = Role.find(params[:id])
  end

  def role_params
    params.require(:role).permit(:user_id, :role, :security_question, :security_answer)
  end
end
  