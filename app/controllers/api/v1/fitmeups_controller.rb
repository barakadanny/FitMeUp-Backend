module Api
  module V1
    class FitMeUpsController < ApplicationController
      def index
        @user = User.find_by(username: params[:token])
        render json: @user
      end
    end
  end
end