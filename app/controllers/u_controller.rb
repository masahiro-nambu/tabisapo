class UController < ApplicationController

  before_action :set_user, only: [:index, :show]

  before_action :admin_user, only: [:destroy, :edit, :index]

  def destroy
  	 Articles.find(params[:id]).destroy
     head :no_content
  end

  private

    def set_user
      @user = User.includes(:articles).where(screen_name: params[:id]).first
    end

    def admin_user
      remember_token = User.encrypt(cookies[:remember_token])
      current_user ||= User.find_by(remember_token: remember_token)
      render status: :unauthorized unless current_user.admin?
    end
end
