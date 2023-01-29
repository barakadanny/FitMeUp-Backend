module Api
  module V1
    class UsersController < ApplicationController
      def show
        @user = User.find(user_params)
        render json: @user
      end

      private

      def user_params
        params.permit(:username)
      end
    end
  end
end