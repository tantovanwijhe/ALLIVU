class UsersController < ApplicationController
  # user_params for setting up Cloudinary

  private

  def user_params
    params.require(:user).permit(:photo)
  end
end
