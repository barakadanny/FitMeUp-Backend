class Api::V1::RolesController < ApplicationController


  def role_params
    params.require(:role).permit(:user_id, :role, :security_question, :security_answer)
  end
end
  