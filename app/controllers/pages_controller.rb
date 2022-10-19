class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  def show
    @service = Service.find(params[:id])
    @booking = Booking.new
    @lastbook = Booking.last
  end

  def home
    @services = Service.where(category: params[:query])
    @categories = Service::CATEGORIES
    @markers = @services.geocoded.map do |service|
      {
        lat: service.latitude,
        lng: service.longitude,
        info_window: render_to_string(partial: "info_window", locals: {service: service}),
        image_url: helpers.asset_url("marker.png")
      }
    end
    params_presence
  end

  private

  def params_presence
    if params[:query].present?
      sql_query = <<~SQL
        services.name ILIKE :query
        OR services.location ILIKE :query
        OR services.description ILIKE :query
        OR services.category ILIKE :query
      SQL
      @services = Service.where(sql_query, query: "%#{params[:query]}%")
    else
      @services = Service.all
    end
  end
end
