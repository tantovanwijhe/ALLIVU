class UsersController < ApplicationController
  def show
    @user = current_user.services
  end

  def new_provider
  end

  def service
    @user = current_user
    @services = Service.where(user_id: current_user)
  end

  private

  def user_params
    params.require(:user).permit(:photo)
  end
end
