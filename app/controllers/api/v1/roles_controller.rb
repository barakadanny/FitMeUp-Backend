class Api::V1::RolesController < ApplicationController

  private

  def set_role
    @role = Role.find(params[:id])
  end

  def role_params
    params.require(:role).permit(:user_id, :role, :security_question, :security_answer)
  end
end
  