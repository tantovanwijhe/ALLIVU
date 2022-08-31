class ServicesController < ApplicationController
  def show
    @service = Service.find(params[:id])
    @booking = Booking.new
  end

  def index
    @services = Service.where(category: params[:query])
  end

  def categories
    @categories = Service::CATEGORIES
  end
end
