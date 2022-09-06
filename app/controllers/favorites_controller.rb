class FavoritesController < ApplicationController
  def create
    user = current_user
    service = params[:service_id]
    favorite = Favorite.new(user_id: user, service_id: service)
    favorite.save!
    raise
  end

  def index
  @favorites = Favorite.all
  end
end
