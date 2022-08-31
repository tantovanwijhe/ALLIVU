class ServicesController < ApplicationController
  def show
    @service = Service.find(params[:id])
    @booking = Booking.new
    @lastbook = Booking.last
  end

  def index
    @categories = Service::CATEGORIES
  end
end
