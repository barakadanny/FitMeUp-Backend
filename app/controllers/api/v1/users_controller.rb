module Api
  module V1
    class UsersController < ApplicationController
      before_action :authenticate_request, except: :create

      def index
        render json: modify_user(@current_user)
      end

      def new
        @user = User.new
      end

      def create
        @user = User.new(user_params.except('price', 'bio'))
        if @user.save
          if request.headers['Authorization'].present?
            header = request.headers['Authorization']
            header = header.split(' ').last if header
            decoded = JsonWebToken.decode(header)
            user = Role.find_by(user_id: decoded[:user_id])
            if user.role == 'admin'
              Role.create(role: 'trainer', user: @user)
              Trainer.create(price: params[:price], bio: params[:bio], user: @user)
            end
          else
            Role.create(user: @user)
          end
          render json: modify_user(@user), status: :created
        else
          render json: { errors: @user.errors }, status: :unprocessable_entity
        end
      end

      private

      def user_params
        params.permit(:username, :full_name, :date_of_birth, :email_address, :phone_number, :health_info,
                      :height_in_meter, :weight_in_kg, :profile_pic, :address, :price, :bio, :password, :password_confirmation)
      end

      def modify_user(user_obj)
        exclude = %w[created_at updated_at security_question security_answer user_id password_digest]
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
          appointments:
        }
        user_json.merge(role_json, appointment_obj)
      end
    end
  end
end
