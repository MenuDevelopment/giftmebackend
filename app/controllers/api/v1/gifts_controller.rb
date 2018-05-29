module Api
  module V1
    class GiftsController < ApplicationController
      before_action :grab_gift, only: [:show, :edit, :delete]

      def create

      end

      def show
        render json: @gift
      end

      def index
        render json: Gift.all
      end

      private

      def grab_gift
        @gift = Gift.find(params[:id])
      end


    end
  end
end
