class ServicesController < ApplicationController
  def show
    @service = Service.find(params[:id])
    @booking = Booking.new
    @lastbook = Booking.last
  end

  def index
    @services = Service.where(category: params[:query])

    @markers = @services.geocoded.map do |service|
      {
        lat: service.latitude,
        lng: service.longitude,
        info_window: render_to_string(partial: "info_window", locals: {service: service})
      }
    end
  end

  def categories
    @categories = Service::CATEGORIES
  end
end
