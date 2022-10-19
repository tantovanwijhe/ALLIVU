class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @review.service = Service.find(params[:service_id])
    @review.booking = Booking.find(params[:booking_id])
    @review.save ? (redirect_to user_path) : (render :new, status: :unprocessable_entity)
  end

  def new
    @review = Review.new
    @service = Service.find(params[:service_id])
    @booking = Booking.find(params[:booking_id])
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment, photos: [])
  end
end
