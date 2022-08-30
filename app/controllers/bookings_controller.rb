class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @booking.service = Service.find(params[:service_id])
    @booking.user = current_user
    if @booking.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @lastbook = Booking.last
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
