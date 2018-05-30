
class Api::V1::PledgesController < ApplicationController
  def create
    @pledge = Pledge.create({
        user_id: params[:user_id],
        gift_id: params[:gift_id],
        amount: params[:amount]
      })
    render json: @pledge
  end

end
