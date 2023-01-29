module Api
  module V1
    class UsersController < ApplicationController
      skip_before_action :verify_authenticity_token

      def index
      end

      private

      def user_params
        params.require(:user).permit(:username)
      end
    end
  end
end