class ServicesController < ApplicationController
  def show
    @service = Service.find(params[:id])
    @booking = Booking.new
  def index
    @categories = Service::CATEGORIES
  end
end
