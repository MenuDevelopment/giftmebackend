
class Api::V1::GiftsController < ApplicationController
  before_action :grab_gift, only: [:show, :edit, :delete]

  def create

  end

  def show
    render json: @gift
  end

  def index
    if (valid_token?)
      render json: Gift.all
    else
      render json: { go_away: true }, status: :unauthorized
    end
  end

  private

  def grab_gift
    @gift = Gift.find(params[:id])
  end


end
