module Api
  module V1
    class UsersController < ApplicationController
      skip_before_action :verify_authenticity_token

      def show
        @user = Role.includes(:user).find(params[:id])
        render json: @user
      end
    end
  end
end