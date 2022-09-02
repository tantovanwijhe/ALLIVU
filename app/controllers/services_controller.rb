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
    if params[:query].present?
        @services = Service.where(location: params[:query])
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
