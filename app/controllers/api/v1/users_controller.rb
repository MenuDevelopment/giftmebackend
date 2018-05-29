
class Api::V1::UsersController < ApplicationController
  before_action :find_user, only: [:show, :update, :delete]
  def index
    render json: User.all
  end

  def show
    render json: @user
  end

  def create
    @user = User.new

    @user.username = params[:username]
    @user.password = params[:password]

    if (@user.save)
      render json: token_json(@user)
    else
      render json: {
        errors: @user.errors.full_messages
      }, status: :unprocessable_entity
    end
  end

  def update
  end

  def delete
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  # def users_gifts
  #   @user = User.find_by(id: params[:user_id])

  #   if (authorized?(@user))
  #     render json: @user.gifts
  #   else
  #     render json: { go_away: true }, status: :unauthorized
  #   end

  # end
end
