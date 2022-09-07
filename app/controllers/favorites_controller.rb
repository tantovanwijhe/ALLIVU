class FavoritesController < ApplicationController
  def create
    @favorites = Favorite.all.map do |favorite|
      favorite.service
    end
    @user = current_user
    @service = Service.find(params[:service_id])
    @favorite = Favorite.new
    @favorite.user = @user
    @favorite.service = @service
    if !@favorites.include?(@service)
      @favorite.save!
      redirect_to favorites_path
    end
  end

  def index
    @favorites = Favorite.all
  end

  def destroy
    @service = Service.find(params[:service_id])
    @favorite = Favorite.find(params[:id])
    if @favorite.destroy
      redirect_to service_path(@service)
    end
  end
end
