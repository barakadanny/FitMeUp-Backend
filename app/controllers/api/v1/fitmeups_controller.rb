module Api
  module V1
    class FitmeupsController < ApplicationController
      def index
        render json: params
        # @user = User.find_by(username: params[:token])
        # render json: @user
      end
    end
  end
end