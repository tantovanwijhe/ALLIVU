class ServicesController < ApplicationController
  def show
    @service = Service.find(params[:id])
    @booking = Booking.new
    @lastbook = Booking.last
  end

  def index
    @services = Service.where(category: params[:query])
  end

  def categories
    @categories = Service::CATEGORIES
  end

  private

  def service_params
    params.require(:service).permit(:name, :category, :description, :price, :location, :photos [])
  end
end
