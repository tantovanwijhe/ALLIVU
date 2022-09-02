class UsersController < ApplicationController
  # user_params for setting up Cloudinary
  def show
    @user = current_user.services
  end

  private

  def user_params
    params.require(:user).permit(:photo)
  end
end
