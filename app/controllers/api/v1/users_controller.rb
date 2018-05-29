module Api
  module V1
    class UsersController < ApplicationController
      before_action :find_user, only: [:show, :update, :delete]
      def index
        render json: User.all
      end

      def show
        render json: @user
      end

      def create
        @user = User.create({
          username: params[:username],
          email: params[:email],
          payment: params[:payment],
          password: params[:password]
        })
        
        render json: @user
      end

      def update
      end

      def delete
      end

      private

      def find_user
        @user = User.find(params[:id])
      end


    end
  end
end
