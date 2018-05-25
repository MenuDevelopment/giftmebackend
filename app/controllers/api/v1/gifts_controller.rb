module Api
  module V1
    class GiftsController < ApplicationController
      before_action :grab_gift, only: [:show, :edit, :delete]

      def create

      end

      def show
        if params[:user_id]
          render json: User.find(params[:user_id]).created_gifts.find(params[:id])
        else
          render json: @gift
        end
      end

      def index
        if params[:user_id]
          @user = User.find(params[:user_id])
          render json: @user.created_gifts
        else
          render json: Gift.all
        end
      end

      private

      def grab_gift
        @gift = Gift.find(params[:id])
      end


    end
  end
end
