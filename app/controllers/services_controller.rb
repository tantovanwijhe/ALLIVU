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
    @services = Service.where(location: params[:query])

    if params[:query].present?
        @categories = @services.map do |service|
          service.category
        end
        @categories = @categories.uniq
    else
      @categories = Service::CATEGORIES
    end

  end


  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    @service.user = current_user
    if @service.save
      redirect_to service_path(@service)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def service_params
    params.require(:service).permit(:name, :category, :description, :price, :location, photos: [])
  end
end
