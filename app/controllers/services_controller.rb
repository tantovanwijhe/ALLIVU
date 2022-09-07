class ServicesController < ApplicationController
  def show
    @service = Service.find(params[:id])
    @booking = Booking.new
    @lastbook = Booking.last
    @markers = [
      { lat: @service.latitude,
        lng: @service.longitude,
        info_window: render_to_string(partial: "info_window", locals: { service: @service }),
        image_url: helpers.asset_url("marker.png") }
    ]

    @favorite_services = Favorite.all.map do |favorite|
      favorite.service
    end

    @favorite = @service.favorite
  end

  def index
    @categories = Service::CATEGORIES
    if params[:query].present?
      sql_query = <<~SQL
        services.name ILIKE :query
        OR services.description ILIKE :query
        OR services.category ILIKE :query
      SQL
      @services = Service.where(sql_query, query: "%#{params[:query]}%")
    else
      @services = Service.all
      # @services = Service.where(category: params[:query])
    end

    if params[:option] == "High"
      @services = @services.order(price: :desc)
    elsif params[:option] == "Low"
      @services = @services.order(price: :asc)
    end

    @markers = @services.geocoded.map do |service|
      {
        lat: service.latitude,
        lng: service.longitude,
        info_window: render_to_string(partial: "info_window", locals: {service: service}),
        image_url: helpers.asset_url("marker.png")
      }
    end

    @favorite_services = Favorite.all.map do |favorite|
      favorite.service
    end
  end

  def categories
    sql_query = "location ILIKE :query"
    @services = Service.where(sql_query, query: "%#{params[:query][:location]}%")
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
      current_user.update(provider: true)
      current_user.provider = true
      redirect_to service_path(@service)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @service = Service.find(params[:id])
  end

  def update
    @service = Service.find(params[:id])
    @service.update(service_params)
    redirect_to service_path(@service)
  end

  private

  def service_params
    params.require(:service).permit(:name, :category, :description, :price, :location, photos: [])
  end
end
