module Api
  module V1
    class AuthsController < ApplicationController
      before_action :authenticate_request, except: :login

      def login
        @user = User.find_by(username: user_params[:username])
        if @user&.authenticate(user_params[:password])
          token = JsonWebToken.encode(user_id: @user.id)
          render json: { token: }, status: :ok # rubocop:disable Lint/Syntax
        else
          render json: { error: 'unauthorized' }, status: :unauthorized
        end
      end

      private

      def user_params
        params.require(:auth).permit(:username, :password)
      end
    end
  end
end
