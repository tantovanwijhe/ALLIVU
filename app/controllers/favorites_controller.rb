class FavoritesController < ApplicationController
  def create
    @favorites = Favorite.all.map(&:service)
    @user = current_user
    @service = Service.find(params[:service_id])
    @favorite = Favorite.new
    @favorite.user = @user
    @favorite.service = @service
    return @favorite.save! && (redirect_to service_path(@service)) unless @favorites.include?(@service)
  end

  def index
    @favorites = Favorite.all
  end

  def destroy
    @service = Service.find(params[:service_id])
    @favorite = Favorite.find(params[:id])
    redirect_to service_path(@service) if @favorite.destroy
  end
end
