module Api
  module V1
    class FitmeupsController < ApplicationController
      def index
        @user = User.find_by(username: params[:token])
        if @user.nil?
          render json: { msg: 'please use valid token' }
        else
          render json: {
            user: @user
          }
        end
      end
    end
  end
end
