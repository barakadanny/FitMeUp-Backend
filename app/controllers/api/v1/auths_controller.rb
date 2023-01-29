module Api
  module V1
    class AuthsController < ApplicationController
      skip_before_action :verify_authenticity_token

      def login
        @user = User.find_by(username: user_params[:username])
        render json: {:token => @user.username}
      end

      private

      def user_params
        params.require(:user).permit(:username)
      end
    end
  end
end