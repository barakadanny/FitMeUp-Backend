module Api
  module V1
    class UsersController < ApplicationController
      skip_before_action :verify_authenticity_token

      def show
        @user = User.find(params[:id])
        render json: modify_user(@user)
      end

      private

      def modify_user(user_obj)
        exclude = ['created_at', 'updated_at', 'security_question', 'security_answer', 'user_id']
        role_json = JSON.parse(user_obj.roles.to_json).except(*exclude, 'id')
        user_json = JSON.parse(user_obj.to_json).except(*exclude)
        appointments = user_obj.appointments.map do |appointment|
          obj = JSON.parse(appointment.to_json).except(*exclude)
          appointement_trainer = Trainer.find(obj['trainer_id'])
          obj.delete('trainer_id')
          trainer_user_detail = JSON.parse(appointement_trainer.user.to_json).slice('full_name', 'profile_pic')
          appointement_trainer_obj = {
            id: appointement_trainer.id,
            appointment_url: "#{request.base_url}/api/v1/appointments/#{appointement_trainer.id}"
          }
          filtered_data = JSON.parse(appointement_trainer.to_json).except(*exclude)
          appointement_trainer_obj.merge(filtered_data, trainer_user_detail, obj)
        end
        appointment_obj = {
          appointments:,
        }
        user_json.merge(role_json, appointment_obj)
      end
    end
  end
end