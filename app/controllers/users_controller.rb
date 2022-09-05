class UsersController < ApplicationController
  def show
    @user = current_user.services
  end

  private

  def user_params
    params.require(:user).permit(:photo)
  end
end
