class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @booking.service = Service.find(params[:service_id])
    @booking.user = current_user
    @booking.save ? (redirect_to bookings_confirmation_path) : (render :new, status: :unprocessable_entity)
  end

  def show
    @lastbook = Booking.last(booking_params)
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @service = Service.find(params[:service_id])
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
